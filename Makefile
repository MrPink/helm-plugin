.PHONY: build
build:
	go build -o bin/helm-plugin cmd/main.go

.PHONY: test
test:
	go test ./...

.PHONY: lint
lint:
	golangci-lint run