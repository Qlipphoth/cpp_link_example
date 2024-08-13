#!/bin/bash

# 创建构建目录
mkdir -p ../build

# 编译静态库
g++ -c -I../include ../src/staticLib.cpp -o ../build/staticLib.o
ar rcs ../build/libstatic.a ../build/staticLib.o

# 编译动态库并链接静态库
g++ -fPIC -shared -I../include ../src/dynamicLib.cpp -L../build -lstatic -o ../build/libdynamic.dll

# 编译主程序并链接动态库与静态库（由于动态库已经链接了静态库因此也可以省略 -lstatic）
g++ -I../include ../src/main.cpp -L../build -ldynamic -lstatic -o ../build/main

# 运行主程序
../build/main