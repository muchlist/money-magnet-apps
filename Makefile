# ==================================================================================== #
# HELPERS
# ==================================================================================== #

## help: print this help message
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' | sed -e 's/^/ /'

confirm:
	@echo -n 'Are you sure? [y/N] ' && read ans && [ $${ans:-N} = y ]

# ==================================================================================== #
# DEVELOPMENT
# ==================================================================================== #

## run/release: run the application in release mode
run/release:
	flutter run --release

## gen/build: run code generator 1 time
gen/build:
	dart run build_runner build --delete-conflicting-outputs

## gen/watch: run and watch code change to generate code
gen/watch:
	dart run build_runner watch --delete-conflicting-outputs


.PHONY: help confirm run/release gen/build gen/watch