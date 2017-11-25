CURRENT_BRANCH="$(shell git rev-parse --abbrev-ref HEAD)"

default: help

help:
	@echo "Usage:"
	@echo "     make [command]"
	@echo "Available commands:"
	@grep '^[^#[:space:]].*:' Makefile | grep -v '^default' | grep -v '^_' | sed 's/://' | xargs -n 1 echo ' -'

build-container:
	docker build -t hgraca/explicit-architecture:app.php_7_1 -f  ./storage/container/app.dockerfile ./storage/container
	docker push hgraca/explicit-architecture:app.php_7_1

coverage:
	bin/fix_code_standards --dry-run
	bin/run_test_suite_with_coverage

cs-fix:
	bin/fix_code_standards

dep-install:
	composer install

dep-update:
	composer update

run:
	bin/run

test:
	bin/fix_code_standards --dry-run
	bin/run_test_suite
#	bin/humbug
