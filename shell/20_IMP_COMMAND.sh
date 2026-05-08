mkdir ~/cli-practice
cd ~/cli-practice


# Create a sample text file
cat > notes.txt <<EOF
Hello world
ERROR: Something went wrong
INFO: System started
DEBUG: Value = 42
ERROR: Disk full
EOF

# Create a CSV file
cat > employees.csv <<EOF
id,name,department,salary
1,Alice,Engineering,70000
2,Bob,HR,50000
3,Charlie,Engineering,80000
4,Diana,Marketing,60000
5,Eve,Engineering,75000
EOF

# Create a log file
cat > access.log <<EOF
192.168.1.10 - - [01/May/2026] "GET /index.html" 200
192.168.1.11 - - [01/May/2026] "POST /login" 403
192.168.1.10 - - [01/May/2026] "GET /dashboard" 200
192.168.1.12 - - [01/May/2026] "GET /index.html" 404
192.168.1.11 - - [01/May/2026] "GET /settings" 200
EOF


