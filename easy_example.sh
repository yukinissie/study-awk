ls -l | awk '{ print $3, $4, $9 }'
ls -l | awk '$9=="hello_world.awk" { print $3, $4, $9 }'
cat /etc/passwd | awk -F: '{ print $1, $6 }'
cat /etc/passwd | awk -F: '{ printf("%-8s %s\n", $1, $6) }'
df | awk 'NR>=2 { z+=$2 }; END { print z }'

