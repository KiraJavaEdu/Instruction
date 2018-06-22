# 海风的Java讲义与实验 （草稿）
## 课程讲义

本讲义是海风业余爱好维护的，想提供一个能够跟得上Java版本更新的课程，包含课程slide，作业，实验和大作业，目前还处于第一版的草稿阶段，尚有许多不足，欢迎各位提出建议。海风的邮箱(sun95214@gmail.com)

海风的Java课程讲义放在了[google dirve](https://drive.google.com/drive/folders/18eXlMBcnuMLlCEOGTCXqMP3wGGay6ouL?usp=sharing)中，各位可以学习或者适用于其他目的，但请注明出处。

目前课程讲义包含以下内容：

1. Java语言概述

2. Java语言基础

3. OOP 上

4. OOP 下

5. Java基础类库

6. 异常处理

7. IO

8. 多线程（讲义制作ing）

   

## 部分内容出处说明

实验讲义中，关于CS的部分背景知识，截取自南京大学yzh师兄，计算机系统基础课程的[实验讲义](https://nju-ics.gitbooks.io/ics2017-programming-assignment/content/)。

课程讲义参考了[《疯狂Java讲义（第3版）》](https://item.jd.com/12261787.html)和北京理工大学 金旭亮老师的[Java讲义](http://www.jinxuliang.com/mainwebsite)。

## 实验前阅读

### 实验须知

* 如果你在实验过程中遇到了困难, 并打算向我们寻求帮助, 请先阅读[提问的智慧](https://github.com/ryanhanwu/How-To-Ask-Questions-The-Smart-Way/blob/master/README-zh_CN.md)这篇文章.
* 如果你发现了实验讲义和材料的错误或者对实验内容有疑问或建议, 请通过邮件的方式联系海风(sun95214@gmail.com)

### 调试公理

* The machine is always right. (机器永远是对的)
   * Corollary: If the program does not produce the desired output, it is the programmer's fault.
* Every line of untested code is always wrong. (未测试代码永远是错的)
   * Corollary: Mistakes are likely to appear in the "must-be-correct" code.

jyy曾经将它们作为fact提出.
事实上无数程序员(包括你的学长学姐)在实践当中一次又一次验证了它们的正确性, 因此它们在这里作为公理出现.
你可以不相信调试公理, 但你可能会在调试的时候遇到麻烦.


## 实验环境
Java 版本: >= Java 8
* 推荐的实验环境方案: 

   * 文本编辑器: Sublime Text、Ultraedit、Vim(**推荐，上手难度高**）
   * 命令行工具: JDK中自带的javac、java、javadoc、jar等
   * 构建工具: maven
   * 版本管理工具: git

* IDE方案：

   * IntelliJ IDEA(社区版)

   * 构建工具: maven

   * 版本管理工具：git

     

## 如何获得帮助
在学习和实验的过程中, 你会遇到大量的问题.
除了参考课本内容之外, 你需要掌握如何获取其它参考资料.

但在此之前，你需要适应查阅英文资料。随着科学技术的发展, 在国际学术交流中使用英语已经成为常态: 顶尖的论文无一不使用英文来书写, 在国际上公认的计算机领域经典书籍也是使用英文编著. 顶尖的论文没有中文翻译版; 如果需要获取信息, 也应该主动去阅读英文材料, 而不是等翻译版出版. "我是中国人, 我只看中文"这类观点已经不符合时代发展的潮流, 要站在时代的最前沿, 阅读英文材料的能力是不可或缺的.

阅读英文材料, 无非就是"不会的单词查字典, 不懂的句子反复读". 如今网上有各种词霸可解燃眉之急, 但英文阅读能力的提高贵在坚持. "刚开始觉得阅读英文效率低", 是所有中国人都无法避免的经历. 如果你发现身边的大神可以很轻松地阅读英文材料, 那是因为他们早就克服了这些困难. 引用陈道蓄老师的话: 坚持一年, 你就会发现有不同; 坚持两年, 你就会发现大有不同.

撇开这些高大上的话题不说, 阅读英文材料和你有什么关系呢? 有! 作为一门程序设计课程，你的大部分疑问都可以通过查找中文资料得到解答，也因此从这个时候开始训练英文资料的阅读能力是最为方便的，容易互相印证。同时，今后的实验过程中，你将不得不大量查阅Java Api，当然是官方提供的英文版本。


如何适应查阅英文资料? 方法是<font color="red">尝试并坚持查阅英文资料</font>.

### 搜索引擎, 百科和问答网站
为了查找英文资料, 你应该使用下表中推荐的网站:

| | 搜索引擎 | 百科 | 问答网站|
| --- | --- | --- | --- |
| 推荐使用 | [这里](https://github.com/greatfire/wiki)和[这里](http://dir.scmor.com/google/)有google搜索镜像 | http://en.wikipedia.org | http://stackoverflow.com |
| 不推荐使用 | ~~http://www.baidu.com~~ | ~~http://baike.baidu.com~~ | ~~http://zhidao.baidu.com~~ <br> ~~http://bbs.csdn.net~~ |

一些说明:
* 一般来说, 百度对英文关键词的处理能力比不上Google.
* 通常来说, 英文维基百科比中文维基百科和百度百科包含更丰富的内容.
为了说明为什么要使用英文维基百科, 请你对比词条 `前束范式` 分别在[百度百科](http://baike.baidu.com/view/143343.htm), [中文维基百科](http://zh.wikipedia.org/wiki/%E5%89%8D%E6%9D%9F%E8%8C%83%E5%BC%8F)和[英文维基百科](http://en.wikipedia.org/wiki/Prenex_normal_form)中的内容.
* stackoverflow是一个程序设计领域的问答网站, 里面除了技术性的问题([What is ":-!!" in C code?](http://stackoverflow.com/questions/9229601/what-is-in-c-code/9229793))之外, 也有一些学术性([Is there a regular expression to detect a valid regular expression?](http://stackoverflow.com/questions/172303/is-there-a-regular-expression-to-detect-a-valid-regular-expression))和一些有趣的问题([What is the “-->” operator in C++?](https://stackoverflow.com/questions/1642028/what-is-the-operator-in-c)).

### 官方手册
官方手册包含了查找对象的<font color="red">所有</font>信息,
关于查找对象的<font color="red">一切</font>问题都可以在官方手册中找到答案.
通常官方手册的内容十分详细, 在短时间内通读一遍基本上不太可能, 因此你需要懂得"如何使用目录来定位你所关心的问题".
如果你希望寻找一些用于快速入门的例子, 你应该使用搜索引擎.

这里列出一些本课程中可能会用到的手册:
* [Java SE8 语言规范](https://docs.oracle.com/javase/specs/jls/se8/jls8.pdf)
* [Java SE8 API](https://docs.oracle.com/javase/8/docs/api/)

####在线教程
以下列出部分工具的在线官方教程
* [Git](https://git-scm.com/book/en/v2)
* [Maven](https://maven.apache.org/guides/getting-started/index.html)

