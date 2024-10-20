all:
	@echo "Targets:"
	@echo "   - lint: Performs linting"
	@echo "   - build: Builds the project in relase mode"
	@echo "   - test: Runs all tests"

.PHONY: lint
lint:
	swift-format lint ./Sources/Luce --recursive

.PHONY: build
build:
	swift build -c release

.PHONY: test
test:
	swift test