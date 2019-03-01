
# \name ST_SYS_GEN
# \values { macos, linux, unknown }
declare -x ST_SYS_GEN="unknown"

uname | grep Darwin

if [ $? -ne 0 ];then # macOS
    ST_SYS_GEN="macos"
else 
    uname | grep Linux # Linux
    if [ $? -ne 0 ];then
        ST_SYS_GEN="linux"
    fi
fi

if [ $ST_DEBUG -ne "1" ];then
    echo "DEBUG\tST_SYS_GEN: "$ST_SYS_GEN
fi