module github.com/k-ogger/kogger-api

go 1.24.0

toolchain go1.24.4

require (
	github.com/ZolaraProject/library v0.1.1-rc08
	github.com/gorilla/mux v1.8.1
	github.com/k-ogger/kogger-service v0.0.1-rc02
	google.golang.org/grpc v1.73.0
)

require (
	go.opentelemetry.io/otel/sdk/metric v1.37.0 // indirect
	golang.org/x/net v0.41.0 // indirect
	golang.org/x/sys v0.33.0 // indirect
	golang.org/x/text v0.26.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250603155806-513f23925822 // indirect
	google.golang.org/protobuf v1.36.6 // indirect
)

replace github.com/k-ogger/kogger-service => ../kogger-service
