import { Greeter } from "./ts/_proto/helloworld_pb_service";
import { grpc } from "grpc-web-client";
import { HelloReply, HelloRequest } from "./ts/_proto/helloworld_pb";

const host = "http://0.0.0.0:8085";

function sayHello() {
  const unary = new Greeter.SayHelloAgain();
  const helloRequest = new HelloRequest();
  helloRequest.setName("Jeremy");
  grpc.unary(Greeter.SayHelloAgain, {
    request: helloRequest,
    host: host,
    onEnd: res => {
      const { status, statusMessage, headers, message, trailers } = res;
      console.log("sayhello.onend.status", status, statusMessage);
      console.log("sayhello.onend.headers", headers);
      if (status === grpc.Code.OK && message) {
        console.log("sayhello.onend.message", message.toObject());
      }
    }
  });
}

sayHello();
