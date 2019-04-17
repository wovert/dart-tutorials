# Dart

## What Dart

> Google 发布开源编程语言

- 目标：下一代的 web 开发语言
- 目前：应用于全平台开发
- 特点：面向对象编程语言

- 应用场景：
  - Web开发(如不JavaScript)
  - **跨平台移动应用开发(Flutter)**
  - 脚本或服务端开发(不如Java或Python)

## 搭建环境

### Dart SDK 安装

[官网下载SDK](https://www.dartlang.org/tools/sdk#install)

- Windows: `choco install dart-sdk`
- Linux: `sudo apt-get install dart`
- Mac: `brew install dart --devel`

### Dart IDE 安装

- IntelliJ IDEAD
- Android Studio
- VS Code
- Sublime Text
- Atom

## Dart 语言入门

### 变量

- `var` 声明变量
  - 为初始化是，默认值为 `null`
  - 使用 `final` 声明一个只能赋值一次的变量

### 数据类型

- 内置类型
  - Number
  - Boolean
  - String
  - List
  - Map
  - Runes
  - Symbols

#### 数值型操作

- 运算符：`- +, -, *, /, ~/(取整), %`
- 常用属性：`isNaN, isEven, isOdd`
- 常用方法：
  - abs()
  - round()
  - floor()
  - ceil()
  - toInt()
  - toDouble()

#### 字符串创建

- 单引号，双引号
- 三个单引号或双引号创建多行字符串
- 使用 r 创建原始 raw 字符串
- 运算符：`+, *, ==, [index]`
- 插值表达式：`${expression}`
- 常用属性：`length, isEmpty, isNotEmpty`
- 常用方法：
  - boolean contains()
  - string subString(startIndex, length)
  - boolean startsWith()
  - boolean endsWith()
  - indexOf()
  - lastIndexOf()
  - toLowerCase()
  - toUpperCase()
  - trim()
  - trimLeft()
  - trimRight()
  - split()
  - replaceXXX()

#### 布尔类型

- `bool status=true|false;`

#### 列表

- 创建List：`var list = [1,2,3];`
- 创建不可变的List: `var list = const [1,2,3];`
- 构造创建：`var list = new List();`
- 常用操作：
  - []
  - length
  - add()
  - insert()
  - remove()
  - clear()
  - indexOf()
  - lastIndexOf()
  - sort()
  - sublist()
  - shuffle()
  - asMap() 列表转换为字典
  - forEach()

#### 字典

- 创建Map: `var language = {'first': 'Dart', 'Second': 'flutter'};`
- 创建不可变Map: `var language = const {'first': 'Dart', 'Second': 'flutter'};`
- 构造创建：`var language = new Map();`
- 常用操作
  - []
  - length
  - isEmpty()
  - isNotEmpty()
  - Keys,values
  - containsKey(), containsValue()
  - remove()
  - forEach()

#### dynamic

### 运算符

- 赋值运算符
  - `=`
  - `??=` 变量没有值时，使用赋值的值

### 控制流

- `for`
- `for in`
- `switch ... case` 语句
  - 比较类型：`num, String, 编译器常量，对象，枚举`
  - 非空 `case` 必须有一个`break`
  - `default` 处理默认情况
  - `continue` 跳转标签

### 方法

- 可命名参数：{param1, param2,...}
- 可选位置参数：[param1, param2,...]
- 如果存在具体参数，可选参数声明，必须在参数后面

### 枚举

```dart
enum Season {
  spring,
  summer,
  autumn,
  winter
}
var curSeason = Season.winter;
print(curSeaon.index)
switch(curSeaon) {
  case Season.spring:
    print("1-3 month");
    break;
  case Season.summer:
    print("4-6 month");
    break;
  case Season.autumn:
    print("7-9 month");
    break;
  case Season.winter:
    print("10-12")
    break;
}
```

### 泛型

```dart
var list = new List<String>();
list.add(1); // error

```