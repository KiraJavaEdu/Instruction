# Lab1-从CPP到Java，重构之旅第一弹

{% mdinhtml begin='<div class=panel><div class=lab>重构之旅 第一章</div><div class=word-in-panel>', end='</div></div>' %}
* Lab系列是重构之旅，我们将从一个简单的需求开始，伴随课程的不断深入，对这一程序逐步重构优化。
* 我们使用git对你的实验过程进行跟踪, 不合理的跟踪记录会影响你的成绩. git log是独立完成实验的最有力证据, 完成了实验内容却缺少合理的git log, 不仅会损失大量分数, 还会给抄袭判定提供最有力的证据. 因此, 请你注意以下事项:
 * 请你不定期查看自己的git log, 检查是否与自己的开发过程相符.
 * **不要把你的代码上传到公开的地方.**
 * 总是在工程目录下进行开发, 不要在其它地方进行开发, 然后一次性将代码复制到工程目录下, 这样git将不能正确记录你的开发过程.
 * 不要删除我们要求创建的分支, 否则会影响我们的脚本运行, 从而影响你的成绩
 * 不要清除git log

偶然的跟踪失败不会影响你的成绩. 如果上文中的错误信息总是出现, 请尽快联系我们.
{% endmdinhtml %}

#重构之旅，由此展开
各位都是学生，我们就从学生开始这场重构之旅！为了对比CPP与Java面向对象的差异，首先请各位同学请使用C++语言编写一个Student类，要求声明和实现分离，具体需求如下：
{% mdinhtml begin='<div class=panel><div class=lab>需求分析</div><div class=word-in-panel>', end='</div></div>' %}
1. 至少包含以下字段：姓名、学号、成绩单（包括课程名称、学时、分数，可以使用数组或者链表实现，由于每个学生选修的课程数量不一致，成绩单的项数不固定）、学分积（要求根据成绩单中各课程的学时数来计算分数的加权平均）
2. 方法：构造函数以及析构函数不能省略，可以根据要求自行添加所需要的方法，至少有一组函数重载。
3. 具备良好的封装，不允许直接操作对象的属性，必须通过相应的方法对对象的属性进行添加、删除、修改、查询。
{% endmdinhtml %}

为了更快进入正题，我们给出如下C++头文件`Student.h`，lab的第一步，请给出该头文件的具体实现。

```
#include<string>

using std::string;

class Student {
private:
	typedef struct _course_ {  
		string _courseNumber;
		string _courseName;	
		int _courseHour;
		double _score;  
		struct _course_ *next;  
	}course, *courseList;   
private:
	string name;
	int    NO;
	double averScore;
	courseList report;

private:
	void calcAverScore();
	
public:
	Student();
	Student(string name, int NO, double averScoer);
	~Student();
	
	void setName(string);
	void setNO(int);
	string getName();
	int getNO();
	double getAverScore();
	
	bool addCourse(string NO, string name, int hour, double score);
	bool delCourse(string NO);
	bool updateCourse(string NO, double score);
	void printReport();
	void printReport(string NO);
};

```
其中，学生的成绩单使用链表组织，链表中的每个节点代表该学生所修的一门课程，包括课程编码、课程名称、课时、得分信息。
这个头文件所定义的Student类对外提供了如下的方法：
1. 对于私有属性name以及NO，提供了共有的getter&setter方法。
2. 对于学分积，只能通过getter方法查询，并不能人为更改。
3. 对于学生的成绩单，提供了增删改查的基本操作，其中：
	* 对于“增”操作，如果该学生的成绩表中以及有相同课程编号的课程，则添加失败，返回false，否则添加到链表的尾部，返回true。
	* 对于“删”操作，如果该学生的成绩表中没有对应课程编号的课程，则删除失败，返回false，否则执行删除操作，返回true。
	* 对于“改”操作，如果该学生的成绩表中没有对应课程编号的课程，则修改失败，返回false，否则更新对应课程分数，返回true。
	* 对于“查”操作，通过函数重载，提供了2种查询方式：对于无参的`printReport()`方法，输出该学生的完整成绩表，包括姓名、学号、学分积以及所有课程信息；对于有参的`printReport(string)`方法，只需要输出该学生的姓名、学号以及对应课程的信息即可。
4. 请思考为什么要将方法`calcAverScore()`设置为`private`，并正确使用之。

# 穿越时空，从CPP到Java
在完成了上面的牛刀小试之后，相信实现一个对应的Java版本的Student类对于各位同学来说，也不在话下，为了保证能够与上文的CPP版本的学生类相对应。此处，我们同样给出了一个Java版的Student类的模板，请各位同学在完善`todo`部分的代码体的同时，仔细观察并学习示例代码的框架结构。
代码(`Course.java`)如下：

```
package lab1;

public class Course {
    private String courseNumber;
    private String courseName;
    private int courseHour;
    private double score;
    private Course next;

	// omit the getter & setter methods
}

```	

lab1所需要完成的第二部分，就是给出学生类对应Java版本的实现。我们在对应的目录中提供了相应的测试函数，方法细节与CPP版本要求完全一致。

{% mdinhtml begin='<div class=panel><div class=lab>关于测试</div><div class=word-in-panel>', end='</div></div>' %}
**注意**：后续的实现部分，我们并不一定都会给出测试用例，一方面，需要同学们自行编写足够的测试用例保证程序的正确性；另一方面，即便提供了测试用例，其覆盖面也不一定能够针对所有边界条件，意味着即便通过了我们提供的测试用例，也无法保证你的程序实现是完全正确的，且我们的检测程序的测试用例是脚本自动生成的，不会使用我们提供的测试用例检测程序的正确性。因此，鼓励同学们尽可能跳出所提供的测试用例之外，进行足够的测试，请记住调试公理！
{% endmdinhtml %}


{% mdinhtml begin='<div class=panel><div class=lab>文档注释</div><div class=word-in-panel>', end='</div></div>' %}
在第二章中，介绍过java的文档注释工具，并要求同学们进行自学。在今后的lab中，凡是java程序都要求书写文档注释，并且使用javadoc工具，将对应文档抽取打包。
基本要求：所有对外暴露的方法，都需要有对应的文档注释！
{% endmdinhtml %}
```
package lab1;

public class Student {
    private String name;
    private int NO;
    private double averScore;
    private Course report;

    public Student() {
		// todo, use just one line code
    }

    public Student(String name, int NO, double averScore) {
        this.name = name;
        this.NO = NO;
        this.averScore = averScore;
        this.report = new Course();
        this.report.setNext(null);
    }

    private void calcAverScore() {
		// todo
    }

	//omit some getter & setter methods
    public double getAverScore() {
		// todo
    }

    public boolean addCourse(String NO, String name, int hour, double score) {
		// todo
    }


    public boolean delCourse(String NO) {
		// todo
    }

    public boolean updateCourse(String NO, double score) {
		// todo
    }

    public void printReport() {
		// todo
    }

    public void printReport(String NO) {
		// todo
    }
}
```
此处，包括测试类在内，共有Student.java、Course.java3个文件，3个文件都在同一个包内！要求掌握，如何使用javac工具有序编译对应文件或“一次性”编译全部晚间，并通过java命令执行测试类。

#学生从来都不止一个！
有人的地方就有江湖，有学生的地方就有排名！相信实现一个简单的学生类一定难不倒大家，接下来，留给大家的就是实现一个学生列表！




