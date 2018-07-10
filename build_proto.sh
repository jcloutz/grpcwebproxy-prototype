#!/bin/bash

echo "Compiling protobuf definitions"
mkdir -p ./client/ts/_proto
protoc \
  --plugin=protoc-gen-ts=./client/node_modules/.bin/protoc-gen-ts \
  -I ./proto \
  --js_out=import_style=commonjs,binary:./client/ts/_proto \
  --ts_out=service=true:./client/ts/_proto \
  ./proto/helloworld.proto;

cd server \
  && packages/Grpc.Tools.1.8.0/tools/macosx_x64/protoc \
  -I../proto \
  --csharp_out Greeter \
  --grpc_out Greeter ../proto/helloworld.proto \
  --plugin=protoc-gen-grpc=packages/Grpc.Tools.1.8.0/tools/macosx_x64/grpc_csharp_plugin

# ./server/packages/Grpc.Tools.1.13.0/tools/macosx_x64/protoc -I ./proto \
#     --csharp_out server/Greeter \
#     --grpc_out server/Greeter ./proto/helloworld.proto \
#     --plugin=protoc-gen-grpc=server/packages/Grpc.Tools.1.13.0/tools/macosx_x64/grpc_csharp_plugin;