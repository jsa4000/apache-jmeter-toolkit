#!/bin/bash

set -e
freeMem=`awk '/MemFree/ { print int($2/1024) }' /proc/meminfo`
s=$(($freeMem/10*8))
x=$(($freeMem/10*8))
n=$(($freeMem/10*2))
export JVM_ARGS="-Xmn${n}m -Xms${s}m -Xmx${x}m"

echo "START Running Jmeter on `date`"
echo "JVM_ARGS=${JVM_ARGS}"
echo "jmeter args=$@"
           
# Check for git source    
echo "Checking source "$JMETER_SOURCE                        
if [[ $JMETER_SOURCE == *".git" ]]; then         
    echo "Clonning from source "$JMETER_SOURCE   
    git clone $JMETER_SOURCE                     
fi                                               

# Keep entrypoint simple: we must pass the standard JMeter arguments
jmeter $@
echo "END Running Jmeter on `date`"