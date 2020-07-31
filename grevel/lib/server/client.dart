import 'dart:core';
import 'package:grpc/grpc.dart';
import '../gen/alfa.pbgrpc.dart';

class Client {
  StratServiceClient stub;
  Client() {
    ClientChannel channel = ClientChannel('192.168.0.33',
//    ClientChannel channel = ClientChannel('95.216.162.4',
        port: 50051, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = StratServiceClient(channel, options: CallOptions());
  }
}
