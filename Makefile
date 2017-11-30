CURRENT_BRANCH="$(shell git rev-parse --abbrev-ref HEAD)"

default: help

help:
	@echo "Usage:"
	@echo "     make [command]"
	@echo "Available commands:"
	@grep '^[^#[:space:]].*:' Makefile | grep -v '^default' | grep -v '^_' | sed 's/://' | xargs -n 1 echo ' -'

build-container-dev:
	docker build -t hgraca/lib-name:app.dev.php_7_1 -f ./build/container/dev/app.dockerfile ./build/container/dev
	docker push hgraca/lib-name:app.php_7_1

build-container-prd:
	docker build -t hgraca/lib-name:app.prd.php_7_1 -f ./build/container/prd/app.dockerfile ./build/container/prd
	docker push hgraca/lib-name:app.php_7_1

coverage:
	bin/coverage
	bin/fix_code_standards --dry-run

cs-fix:
	bin/fix_cs

dep-install:
	composer install

dep-update:
	composer update

run:
	bin/run

test:
	bin/test
#	bin/humbug
	bin/fix_cs --dry-run

test-acc:
	bin/test --testsuite acceptance
	bin/fix_cs --dry-run

test-func:
	bin/test --testsuite functional
	bin/fix_cs --dry-run

test-int:
	bin/test --testsuite integration
	bin/fix_cs --dry-run

test-unit:
	bin/test --testsuite unit
	bin/fix_cs --dry-run
