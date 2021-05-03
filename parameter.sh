# /bin/sh parameter.sh 1 2 3

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";

# Shell 传递参数实例！
# 执行的文件名：parameter.sh
# 第一个参数为：1
# 第二个参数为：2
# 第三个参数为：3

echo "Shell 传递参数实例！";
echo "第一个参数为：$1"; # 1

echo "参数个数为：$#"; # 3
echo "传递的参数作为一个字符串显示：$*"; # 1 2 3
echo "后台运行的最后一个进程的ID号：$!";
echo "脚本运行的当前进程ID号：$$"; # 84460
echo "与$*相同，但是使用时加引号，并在引号中返回每个参数：$@"; # 1 2 3
echo "显示Shell使用的当前选项：$-"; # hB
echo "显示最后命令的退出状态：$?"; # output:0 # 0表示没有错误，其他任何值表明有错误。

# $* 与 $@ 区别:
# 相同点：都是引用所有参数。
# 不同点：只有在双引号中体现出来。假设在脚本运行时写了三个参数 1、2、3，，则 " * " 等价于 "1 2 3"（传递了一个参数），而 "@" 等价于 "1" "2" "3"（传递了三个参数）。

echo "-- \$* 演示 ---"
for i in "$*"; do
  echo "i: $i"
done

# -- $* 演示 ---
# i: 1 2 3

echo "-- \$@ 演示 ---"
for i in "$@"; do
  echo "i: $i"
done

# -- $@ 演示 ---
# i: 1
# i: 2
# i: 3

# 如果包含空格，应该使用单引号或者双引号将该参数括起来，以便于脚本将这个参数作为整体来接收。
if [ -n "$1" ]; then
  echo "包含第一个参数"
else
  echo "没有包含第一参数"
fi

# Shell 里面的中括号（包括单中括号与双中括号）可用于一些条件的测试：
# 算术比较, 比如一个变量是否为0
var=0
if [ $var -eq 0 ]; then
  echo "变量等于0"
fi

### 文件属性测试
# 一个文件是否存在 ？？
file=“string”
if [ -e $file ]; then
  echo "file存在"
else
  echo "file不存在"
fi

# 是否是目录 ？？
if [ -d $file ]; then
  echo "file是目录"
else
  echo "file不是目录"
fi

# 字符串比较, 比如两个字符串是否相同
var1="test"
var2="test"
if [[ $var1 = $var2 ]]; then
  echo "字符串相等"
fi

# [] 常常可以使用 test 命令来代替