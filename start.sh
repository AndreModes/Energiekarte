#!/bin/bash
# Startet lokalen Webserver und öffnet Energiekarte im Browser
cd "$(dirname "$0")"
PORT=8080
echo "Energiekarte läuft auf http://localhost:$PORT/Energiekarte1.1.html"
echo "Zum Beenden: Ctrl+C"
python3 -m http.server $PORT --bind 127.0.0.1 &
SERVER_PID=$!
sleep 0.5
xdg-open "http://localhost:$PORT/Energiekarte1.1.html" 2>/dev/null \
  || open "http://localhost:$PORT/Energiekarte1.1.html" 2>/dev/null \
  || start "http://localhost:$PORT/Energiekarte1.1.html" 2>/dev/null
wait $SERVER_PID
