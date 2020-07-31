cd "${0%/*}"/..
protoc -I grpc-back/src/main/proto alfa.proto --dart_out=grpc:grevel/lib/gen