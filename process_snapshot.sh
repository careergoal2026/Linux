
 PID    PPID S CMD
      1       0 S /usr/lib/systemd/systemd --system --deserialize=59
     81       0 S /ecs-execute-command-5b3cacbc-e056-4b1b-8892-07adc05178f7/amazon-ssm-agent
    540       1 S /bin/bash /usr/local/bin/judge/setup.sh
    580      81 S /ecs-execute-command-5b3cacbc-e056-4b1b-8892-07adc05178f7/ssm-agent-worker
    594     540 S su - user -c ttyd -W -p 7681 --ping-interval 45 -t fontSize=16 bash
    613       1 S @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
    631       1 S /usr/lib/systemd/systemd-logind
    914       1 S /usr/lib/systemd/systemd --user --deserialize=12
    927     914 S (sd-pam)
    972     594 S -sh -c ttyd -W -p 7681 --ping-interval 45 -t fontSize=16 bash
    976     972 S ttyd -W -p 7681 --ping-interval 45 -t fontSize=16 bash
    986     540 S tail -f /dev/null
    987     976 S bash
    989     987 S script -a -q -f -o 500M /mnt/.script_logs/script.log --timing=/dev/null -c bash
    990     989 S sh -c bash
    991     990 S bash
   1927       1 S /usr/lib/systemd/systemd-journald
   1956       1 S /bin/bash /tmp/running_parent.sh
   1959    1956 R /bin/bash /tmp/running_helper.sh
   1961    1956 S sleep 1200
   1962       1 S /bin/bash /tmp/sleep_parent.sh
   1965    1962 S /bin/bash /tmp/sleep_helper.sh
   1966    1962 S /bin/bash /tmp/sleep_helper.sh
   1967    1962 S sleep 1200
   1969    1966 S sleep 1800
   1970    1965 S sleep 1800
   1982       1 S /opt/zombie_service/zombie_parent
   1983       1 S /opt/zombie_service/zombie_parent
   1989       1 R bash -c (while :; do :; done &) ; exit 0
   1990    1983 Z [zombie_child] <defunct>
   1991       1 S tail -f /dev/null
   1992    1982 Z [zombie_child] <defunct>
   1994     991 R ps -eo pid,ppid,state,cmd 
