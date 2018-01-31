# 实验前阅读



如果你在实验过程中遇到了困难, 并打算向我们寻求帮助, 请先阅读提问的智慧这篇文章.
如果你发现了实验讲义和材料的错误或者对实验内容有疑问或建议, 请通过邮件的方式联系余子濠(zihaoyu.x#gmail.com)

{% mdinhtml begin='<div class=panel><div class=lab>调试公理</div><div class=word-in-panel>', end='</div></div>' %}
* The machine is always right. (机器永远是对的)
 * Corollary: If the program does not produce the desired output, it is the programmer's fault.
* Every line of untested code is always wrong. (未测试代码永远是错的)
 * Corollary: Mistakes are likely to appear in the "must-be-correct" code.

jyy曾经将它们作为fact提出.
事实上无数程序员(包括你的学长学姐)在实践当中一次又一次验证了它们的正确性, 因此它们在这里作为公理出现.
你可以不相信调试公理, 但你可能会在调试的时候遇到麻烦.
{% endmdinhtml %}

如何获得帮助
在学习和实验的过程中, 你会遇到大量的问题. 除了参考课本内容之外, 你需要掌握如何获取其它参考资料.
但在此之前, 你需要适应查阅英文资料. 和以往程序设计课上遇到的问题不同, 你会发现你不太容易搜索到相关的中文资料. 回顾计算机科学层次抽象图, 计算机系统基础处于程序设计的下层. 这意味着, 懂系统基础的人不如懂程序设计的人多, 相应地, 系统基础的中文资料也会比程序设计的中文资料少.
如何适应查阅英文资料? 方法是尝试并坚持查阅英文资料.
搜索引擎, 百科和问答网站
为了查找英文资料, 你应该使用下表中推荐的网站:
搜索引擎	百科	问答网站
推荐使用	这里和这里有google搜索镜像	http://en.wikipedia.org	http://stackoverflow.com
不推荐使用	http://www.baidu.com	http://baike.baidu.com	http://zhidao.baidu.com 
http://bbs.csdn.net
一些说明:
一般来说, 百度对英文关键词的处理能力比不上Google.
通常来说, 英文维基百科比中文维基百科和百度百科包含更丰富的内容. 为了说明为什么要使用英文维基百科, 请你对比词条 前束范式 分别在百度百科, 中文维基百科和英文维基百科中的内容.
stackoverflow是一个程序设计领域的问答网站, 里面除了技术性的问题(What is ":-!!" in C code?)之外, 也有一些学术性(Is there a regular expression to detect a valid regular expression?)和一些有趣的问题(What is the “-->” operator in C++?).
官方手册
官方手册包含了查找对象的所有信息, 关于查找对象的一切问题都可以在官方手册中找到答案. 通常官方手册的内容十分详细, 在短时间内通读一遍基本上不太可能, 因此你需要懂得"如何使用目录来定位你所关心的问题". 如果你希望寻找一些用于快速入门的例子, 你应该使用搜索引擎.
这里列出一些本课程中可能会用到的手册:
Intel 80386 Programmer's Reference Manual (人手一本的i386手册)
GCC 6.3.0 Manual
GDB User Manual
GNU Make Manual
System V ABI for i386
On-line Manual Pager (即man, 这里有一个入门教程)
