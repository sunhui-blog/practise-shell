echo "Hello World !"

your_name="qinjx"

# 注：变量名和等号之间不能有空格

echo $your_name
echo ${your_name}

### 变量名的命名须遵循如下规则：
# 1.命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
# 2.中间不能有空格，可以使用下划线（_）。
# 3.不能使用标点符号。
# 4.不能使用bash里的关键字（可用help命令查看保留关键字）。

# RUNOOB
# LD_LIBRARY_PATH
# _var
# var2

for file in `ls ../shell-test`; do
  echo "filename: ${file}"
done

for file in $(ls /etc); do
  echo "file: ${file}"
done

for skill in Ada Coffe Action Java; do
  echo "I am good at ${skill}Script"
done

### 加花括号是为了帮助解释器识别变量的边界

# 推荐给所有变量加上花括号，这是个好的编程习惯。
your_name="tom"
echo $your_name
your_name="alibaba"
echo $your_name

### 只读变量
# 使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。
#!/bin/bash
myUrl="https://www.google.com"
readonly myUrl
# ./test.sh: line 46: myUrl: readonly variable 报错后不会进行后续执行
myUrl="https://www.runoob.com"

### 删除变量
# 使用 unset 命令可以删除变量。语法：unset variable_name
your_name="tom"
echo $your_name
unset your_name

# $your_name 不存在不会报错，只会不显示（以上实例执行将没有任何输出）。
echo "hello, $your_name"

# 注：变量被删除后不能再次使用。unset 命令不能删除只读变量。

### 变量类型
# 1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行。




