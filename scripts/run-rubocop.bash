#!/usr/bin/env bash

set -e

cd "${0%/*}/.."

echo "Running rubocop - fix"
bundle exec rubocop -a

echo "Running rubocop"
bundle exec rubocop
