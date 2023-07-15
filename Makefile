proto-auth:
	protoc --go_out=. --go-grpc_out=. --go_opt=paths=source_relative pkg/pb/auth.proto

proto:
	$(MAKE)proto-auth

server:
	go run cmd/main.go