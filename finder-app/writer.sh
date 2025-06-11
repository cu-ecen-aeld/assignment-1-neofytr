if [ $# -lt 2 ]
then    
    echo "needs two arguments!"
    exit 1
fi

writefile=$1
writestr=$2

# create the parent directories if not present; since touch can fail if
# any of the parent directories are missing
mkdir -p $(dirname $writefile)

# now attempt to create the file
touch $writefile
if [ ! -e $writefile ]
then    
    echo "the file ${writefile} couldn't be created"
    exit 1
fi

echo $writestr > $writefile
exit 0