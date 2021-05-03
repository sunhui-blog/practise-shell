### 1.显示普通字符串:
echo "It is a test" # It is a test
echo It is a test # It is a test

### 2.显示转义字符
echo "\"It is a test\"" # "It is a test"

### 3.显示变量
# read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量
# read name 
# echo "$name It is a test"

# test
# test It is a test

### 4.显示换行
echo -e "OK! \n" # -e 开启转义
echo "It is a test"

# -e OK!
#
# It is a test

### 5.显示不换行
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test" # -e OK! It is a test

### 6.显示结果定向至文件
echo "It is a test" > myfile

### 7.原样输出字符串，不进行转义或取变量(用单引号)
echo '$name\"' # $name\"

### 8.显示命令执行结果
echo `date` # 2021年 5月 4日 星期二 01时47分44秒 CST
