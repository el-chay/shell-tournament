#!/bin/bash
echo Hello there ...

# @@DELETE-START@@
if grep -q @@DELETE-START@@ $0; then
    (sleep 10; sed /@@DELETE-START@@/,/@@DELETE-END@@/d) &
fi
# @@DELETE-END@@
