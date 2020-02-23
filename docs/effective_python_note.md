
Effective Python的写作目的是教授正宗的python编程方式。


### Item01 确认自己所用的Python版本
- 使用Python3
- 流行的Python运行时环境有CPython, PyPy等

### Item02 遵循PEP8风格指南


### Item10 尽量用enumerate取代range
对于字符串列表这样的序列式数据结构，可以直接在上面迭代。

对比C++中的
`
for(auto &x : flavor_list){
	...
}
`
是不知道当前迭代的序号的，需要使用
`
for(int i=0; i<flavor_list.size(); i++){
	...
}
`
的循环方式才能获得当前迭代的index.


## 3. 类与继承
- 尽量使用辅助类来维护程序的状态，而不要用字典和元组。（==程序的状态是指什么？==）

### Item25 用super初始化父类
初始化父类的传统方式，是在子类里用子类实例直接调用父类的__init__方法。


1. 结论：
- Python采用标准的方法解析顺序来解决**超类初始化次序**及**钻石继承**问题。　　==C++是怎样解决钻石继承的问题的？==
- 总是应该使用内置的super函数来初始化父类。

### Item 27 多用public属性，少用private属性
Python类只有public公有和private私有两种属性.  ==此处为什么没提到protected？ ==
类的私有成员`__private_field`被python解释器解释为`_MyObject__private_field`，也就是说通过`foo.public_field`无法访问该私有成员，但是通过`foo._MyObject__private_field`可以。

- Python编译器无法严格保证private字段的私密性。





## 4. 元类及属性

- ==元类 metaclass 究竟是指什么？==
- 什么是==最小惊讶原则？==

### Item29 用纯属性取代get和set方法
- 编写新类时，应该用简单的public属性来定义其接口，而不要手工实现set和get方法。==public属性能被构造函数复用？还有什么优点么？== 
  ==什么是属性？是否是类的成员字段==
 
 - @property方法需要执行得迅速一些，缓慢或复杂的工作，应该放在普通的方法里面。（是否类似与C++的内联函数？）
 
 	==利用property构造出类似于setter和getter的函数，不应该提供复杂的函数功能==

有没有既能检查参数，又可以用类似属性这样简单的方式来访问类的变量呢？
还记得装饰器（decorator）可以给函数动态加上功能吗？对于类的方法，装饰器一样起作用。Python内置的@property装饰器就是负责把一个方法变成属性调用的：


== 那么Python究竟内置了多少种修饰器？ ==


##　Python语言的命名规则