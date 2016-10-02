# Displays mounted drive information in a nicely formatted manner
# -------------------------------------------------------------------
function nicemount() {
    (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ;
}

