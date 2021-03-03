# start_term.sh
# James Watson, 2021-03
# Open terminal with a collection of designated tabs

sleep 15s;
# _MODE=simon;

gnome-terminal --geometry=140x30 --title="mongo" -- /bin/bash -c "cd ~/Simon; mongod; exec bash" 
sleep 10s;
gnome-terminal --geometry=140x30 --tab --title="back" -- /bin/bash -c "cd ~/Simon/backend/api; python3 server.py; exec bash" 
sleep 15s;
gnome-terminal --geometry=140x30 --tab --title="front" -- /bin/bash -c "cd ~/Simon/frontend; npm start; exec bash"
gnome-terminal --geometry=140x30 --tab --title="SIMON_1" -- /bin/bash -c "cd ~/Simon; git status; exec bash" 
gnome-terminal --geometry=140x30 --tab --title="SIMIN_2" -- /bin/bash -c "cd ~/Simon; code .; exec bash" 