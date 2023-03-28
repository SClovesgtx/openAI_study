# The present file, 'Makefile' has been modified from the original at
# https://github.com/NeowayLabs/data-science-template
# under the folllowing license:
#
# MIT License
#
# Copyright (c) 2019 Neoway Business Solution
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# BUILD = docker-compose build
# RUN = docker-compose run
# UP = docker-compose up
# DOWN = docker-compose down
# VERSION = $(shell awk -F ' = ' '$$1 ~ /version/ { gsub(/[\"]/, "", $$2); printf("%s",$$2) }' version.toml)

help:
	@echo "USAGE"
	@echo
	@echo "    make <command>"
	@echo "    Include 'sudo' when necessary."
	@echo "    To avoid using sudo, follow the steps in"
	@echo "    https://docs.docker.com/engine/install/linux-postinstall/"
	@echo
	@echo
	@echo "COMMANDS"
	@echo

	@echo "    code-format                  aplly black code formatter."
	@echo "    cyclomatic-complexity  		metric for the complexity of our code."
	@echo "    docs                         show the src modules documentation on the browser"
	@echo "    maintainability-index  		analyze and compute our code Maintainability Index (easy to support and change)."
	@echo "    profiler-report        		report that will track how long specific parts of our code run."
	@echo "    run-api                		run API in localhost for development."
	@echo "    stress-test            		run a stress test for entities endpoint."
	@echo "    test                   		run all unit tests using pytest."
	@echo "    coverage                     run coverage test."
	@echo "    coverage-report              show coverage test results."
	@echo "    coverage-report-detailed     create a detailed html page to show coverage test results."
	@echo "    vulnerability-check    		look for security issues in the code."
	@echo "    test-watch    		          re-runs unit tests when a file in your project changes."
#################
# User Commands # re-runs unit tests when a file in your project changes
#################

test:
	$ pytest -v --cache-clear --disable-warnings tests/