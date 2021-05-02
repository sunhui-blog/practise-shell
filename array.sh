### 定义数组
# 在 Shell 中，用括号来表示数组，数组元素用"空格"符号分割开。定义数组的一般形式为：
# 数组名=(值1 值2 ... 值n)
array_name=(value0 value1 value2 value3)
array_name=(
  value0
  value1
  value2
  value3
)

echo ${array_name[@]} # value0 value1 value2 value3

### 读取数组
# ${数组名[下标]}
echo ${array_name[1]} # value1
length=${#array_name[@]}
echo ${length} # 4
length=${#array_name[*]}
echo ${length} # 4
lengthn=${#array_name[1]}
echo ${lengthn} # 6

#--------------------------------------------
# 这是一个注释
# author：菜鸟教程
# site：www.runoob.com
# slogan：学的不仅是技术，更是梦想！
#--------------------------------------------
##### 用户配置区 开始 #####
#
#
# 这里可以添加脚本描述信息
# 
#
##### 用户配置区 结束  #####

### 多行注释
:<<EOF
注释内容...
注释内容...
注释内容...
EOF

### EOF 也可以使用其他符号:
:<<'
注释内容...
注释内容...
注释内容...
'

:<<!
注释内容...
注释内容...
注释内容...
!
