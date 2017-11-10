#!/bin/bash
echo Hello there ...

# @@DELETE-START@@
if grep -q @@DELETE-START@@ $0; then
    (sleep 10; sed /@@DELETE-START@@/,/@@DELETE-END@@/d) &
fi
echo You can see this only once
# @@DELETE-END@@

echo 'Bye bye!'
