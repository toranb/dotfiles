#-------------------------------------------------------------------------------
# Shows the specified number of the top memory consuming processes and their PID
#-------------------------------------------------------------------------------
function mem_usage() {
    echo -n "How many you what to see? "; read number
    echo ""
    echo "Mem Size       PID     Process"
    echo "============================================================================="
    if [ "$(uname)" = "Darwin" ]; then
        ps aux | awk '{ output = sprintf("%5d Mb --> %5s --> %s%s%s%s", $6/1024, $2, $11, $12, $13, $14); print output }' | sort -gr | head --n $number
    else
        ps aux | awk '{ output = sprintf("%5d Mb --> %5s --> %s%s%s%s", $6/1024, $2, $11, $12, $13, $14); print output }' | sort -gr | head --line $number
    fi
    }
