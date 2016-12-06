CURRENT_BRANCH="$(shell git rev-parse --abbrev-ref HEAD)"

default: help

help:
	@echo "Usage:"
	@echo "     make [command]"
	@echo "Available commands:"
	@grep '^[^#[:space:]].*:' Makefile | grep -v '^default' | grep -v '^_' | sed 's/://' | xargs -n 1 echo ' -'

composer-install:
	composer install

composer-update:
	composer update

coverage:
	php -dzend_extension=xdebug.so bin/phpunit --coverage-text --coverage-clover=coverage.clover.xml

cs-fix:
	bin/php-cs-fixer fix --verbose

test:
	bin/phpunit

test-debug:
	php -dzend_extension=xdebug.so bin/phpunit
