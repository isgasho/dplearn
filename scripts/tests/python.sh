#!/usr/bin/env bash
set -e

if ! [[ "$0" =~ "./scripts/tests/python.sh" ]]; then
  echo "must be run from repository root"
  exit 255
fi

if [ -z "$ETCD_TEST_PATH" ]; then
  echo ETCD_TEST_PATH is not defined!
  exit 255
fi

pushd ./backend/deep/etcd >/dev/null
./tests.sh
popd >/dev/null