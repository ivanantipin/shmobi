package com.firelib.stratserver

import com.firelib.Chart
import com.firelib.DatePoint
import com.firelib.Position
import com.firelib.StratDescription
import firelib.common.Trade
import firelib.core.misc.StreamTradeCaseGenerator
import firelib.core.misc.pnl
import java.util.*
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ConcurrentLinkedQueue

class TradeStat(val stratName : String, val descr : String, val strats : Broadcaster<StratDescription>){


    val generators = ConcurrentHashMap<String, StreamTradeCaseGenerator>();
    val closedPoses = ConcurrentHashMap<String, Queue<Pair<Trade, Trade>>>();
    val defferer = Defferer()

    var stratBuilder = StratDescription.newBuilder().apply {
        name = stratName
        description = descr
    }

    fun addTrade(trade : Trade){
        val gen = generators.computeIfAbsent(trade.security(),{ StreamTradeCaseGenerator() })
        val pos = closedPoses.computeIfAbsent(trade.security(), { ConcurrentLinkedQueue<Pair<Trade, Trade>>() })
        pos += gen.genClosedCases(trade)

        updateThings()
    }

    private fun updateThings() {
        defferer.executeLater {
            val flatten = closedPoses
                    .flatMap { it.value }
                    .sortedBy { it.first.dtGmt }

            var cumPnl = 0.0
            val dots = flatten.map {
                val ret = DatePoint.newBuilder()
                ret.setTimestamp(it.first.dtGmt.toEpochMilli())
                ret.setLabel(it.first.security())
                cumPnl += it.pnl()
                ret.setValue(cumPnl)
                ret.build();
            }
            val chart = Chart.newBuilder().setChartType(Chart.ChartType.Line)
                    .addAllPoints(dots).build()

            stratBuilder.benchmark = chart

            stratBuilder.clearClosedPositions()

            val openPoses = generators.values.flatMap { it.getPosition() }.map { Pair(it,it) }.toList()

            stratBuilder.addAllClosedPositions(doooo(closedPoses.values.flatMap { it.toList() }))

            stratBuilder.clearOpenPositions()

            stratBuilder.addAllOpenPositions(doooo(openPoses))

            println("publish strat to observers")

            strats.add(stratBuilder.build())

        }
    }

    private fun doooo(casese : List<Pair<Trade,Trade>>): List<Position> {
        return casese.sortedBy { it.first.dtGmt }.map {
            Position.newBuilder()
                    .setTicker(it.first.security())
                    .setTimestamp(it.first.dtGmt.toEpochMilli())
                    .setPosition(it.first.qty.toLong())
                    .setOpenPrice(it.first.price)
                    .setCloseTimestamp(it.second.dtGmt.toEpochMilli())
                    .setClosePrice(it.second.price)
                    .setPnl(it.pnl())
                    .build()
        }
    }


}

