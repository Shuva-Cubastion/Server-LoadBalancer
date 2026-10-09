#!/bin/bash
for sec in cloth shoes; do
  echo "== $sec =="
  for i in 1 2 3 4; do
    curl --noproxy "*" -s http://127.0.0.1:8000/$sec/ | grep -o '<h1>.*</h1>'
  done
done
