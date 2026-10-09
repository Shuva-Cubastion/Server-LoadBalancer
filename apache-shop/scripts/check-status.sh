#!/bin/bash
echo "== Services =="
for s in apache2 ssh; do printf "%-8s %s\n" "$s" "$(systemctl is-active $s)"; done
echo "== Servers (HTTP status, 200 = running) =="
for p in 8000 9081 9082 9083 9084; do
  code=$(curl --noproxy "*" -s -o /dev/null -w "%{http_code}" http://127.0.0.1:$p/)
  echo "port $p -> $code"
done
