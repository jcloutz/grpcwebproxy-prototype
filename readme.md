# gRPC Web Proxy Prototype

Prototype using the gRPC hello world example and gRPC web client/web proxy to use grpc client side.

### Included Libraries

- [gRPC Web Proxy](https://github.com/improbable-eng/grpc-web/tree/master/go/grpcwebproxy)
- [gRPC Hello World Example](https://grpc.io/docs/quickstart/csharp.html)
- [gRPC Web Client](https://github.com/improbable-eng/grpc-web)

### Setup

1.  Execute `./install.sh`
2.  Execute `./build_proto.sh`
3.  Execute `./build_grpcwebproxy.sh`

### Run

**Server**
Open server project with Visual Studio, MonoDevleop or Rider and run it.

**gRPC Web Proxy**
`grpcwebproxy --backend_addr=0.0.0.0:50051 --run_tls_server=false --server_http_debug_port=8085 --backend_tls_noverify`

**Client**
`cd client && npm run webpack-dev`

Open the terminal and you will see the response from the server.
