trap "pkill -P $$; exit 0" SIGTERM SIGINT

while true; do
    echo hello there
    sleep 5
done
