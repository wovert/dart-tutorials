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

### 面向对象

- 使用关键字 `class` 声明一个类
- 使用关键字 `new` 创建一个对象，`new` 可省略
- 所有对象都继承与 `Object` 类
- 属性默认会生成 `getter` 和 `setter` 方法
- 使用 `final` 声明的属性只有 `getter` 方法
- 属性和方法通过 `.` 访问
- 方法不能被重载

### 类及成员可见性

- Dart 中的可见性以 `library` (库)为单位
- 默认情况下，每一个`Dart`文件就是一个库
- 使用`_`表示库的私有性
- 使用 `import` 导入库

### 计算属性

- 通过计算而来，本身不存储值
- 计算书型赋值，其实是通过计算转换到其他实例变量

### 构造方法

- 若没有自定义的构造方法，则会有个默认构造方法
- 若有自定义的构造方法，则默认构造方法失效
- 构造方法不能重载

### 命名构造方法

- 使用命名构造方法，可以实现多个构造方法
- 使用`类名.方法`的形式实现

### 常量构造方法

- 若类不可变状态，可以把对象定义为编译时常量
- 使用 `const` 声明构造方法，并且所有变量都为 `final`
- 使用 `const` 声明对象，可以省略

### 工厂构造方法

- 类似设计模式中的工厂模式
- 在构造方法前添加关键字 `factory` 实现一个工厂构造方法
- 在工厂构造方法中可返回对象

### 初始化列表

- 初始化列表在构造方法体执行之前执行
- 使用逗号分隔初始化表达式
- 初始化列表用于设置 `final` 变量的值

### 静态成员

- `static` 关键字来实现类级别的变量和函数
- 静态成员不能访问非静态成员，非静态成员可以访问静态成员
- 类中的常量需要使用 `static const` 声明

### 对象操作符

- 条件成员访问：`?.`
- 类型转换：`as`
- 是否制定类型：`is, is!`
- 级联操作：`..`

```dart
Person person;
person?.work(); // person为空时不执行，不为空时执行
```

### 对象 call 方法

