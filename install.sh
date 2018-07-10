#!/bin/bash

(mkdir -p server/packages && cd server/packages && nuget install Grpc.Tools)
(cd client && npm install);
