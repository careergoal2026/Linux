#!/bin/bash
cat  <<EOF
line 1 
line 2
line 3
line 4

EOF

cat > mysql.conf << EOF

ip=1.2.3.3
blacklist
1
2
3
4
there are few more lines
just checking with the docstring

I have appended this line right now
EOF

