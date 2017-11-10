#!/bin/bash
echo Hello there ...

# @@DELETE-START@@
if grep -q @@DELETE-START@@ $0; then
    function self_delete { sleep 10; sed /@@DELETE-START@@/,/@@DELETE-END@@/d $0; }
    nohup self_delete &> /tmp/self-delete.log &
fi
echo You can see this only once
# @@DELETE-END@@

echo 'Bye bye!'
