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
1. 至少包含以下字段：姓名、学号、成绩单（包括课程名称、学时、分数，可以使用数组或者链表实现，由于每个学生选修的课程数量不一致，成绩单的项数不固定）、学分积（要求根据成绩单中各课程的学时数来计算分数的加权平均）
2. 方法：构造函数以及析构函数不能省略，可以根据要求自行添加所需要的方法，至少有一组函数重载。
3. 具备良好的封装，不允许直接操作对象的属性，必须通过相应的方法对对象的属性进行添加、删除、修改、查询。

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










