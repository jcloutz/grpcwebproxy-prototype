#!/bin/bash
# https://github.com/improbable-eng/grpc-web/issues/152#issuecomment-376973723

go get -v -u github.com/golang/dep/cmd/dep:
go get -v github.com/improbable-eng/grpc-web/go/grpcwebproxy;
cd grpcwebproxy/src/github.com/improbable-eng/grpc-web && dep ensure;
go get -v -u github.com/improbable-eng/grpc-web/go/grpcwebproxy;