#! /bin/sh
# xinput disable 11
Output=$(xinput | awk '/Touchscreen/{print $5}' | sed 's/id=//g')
xinput disable $Output

service ssh stop
