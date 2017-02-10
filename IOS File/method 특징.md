#import VS @class
두 클래스가 서로를 import 한다면 어떻게 될까요?
두 성능의 차이가 무엇일까.. 

1. \#import하면, 전부를 불러온다. 
2. @calss name 하면, 해당 클래스의 이름의 존재를 알려준다.

3. 모든지 헤더파일을 본다. 
4. 상속은 그저 헤더파일을 보고 하는 것. 

@protocol 이라는 것은 나중에!


#interface 구조
@interface 시작 Car: NSObject

objective-c는 상속은 하나만 가능하다. 추가 가능하지 않음.


구현부 - implementation
m파일에만 작성이 된다.

@"..." <-함수 , 어떤 행위를 하는 아이. {  } 꼭!  중 가로 안에 들어감. 
interface 헤더 파일 안에 들어가면 안된다. 

ex) - (void) accelerating

*주석, 퀵헬프 >남을 위해 노력해야함, 구현파일에 주로 작성해야함. 헤더파일은 간략한 설명


<br>
#인스턴스화(객체화)
-alloc 이라는 메소드를 이용해 메소드를 만듬
-초기화를 하는 행동은, 메모리의 정리라는 예상을 통해 꼭 해야한다.




##메소드
-컴퓨터가 수행할 명령어
-메소드를 통해서 외부에 있는 개체와 소통하는데 사용됨.
-h 헤더파일에 적어놔야지만, 메소드를 쓸수가 있음! 통로역할.

```- (NSInteger)... ```

( -- 이것은 메소드 타입.NSInteger: 이것은 반환타입, 그 다음 doubleNum 명명법으로 camelCase 씀, :(NSInteger)number :이것은 매개변수)
return number *2 : 이것은 행동, 입력된 숫자를 2배 해서 반환해준다.

- (NSInteger)doubleNum:(NSInteger)number
{
//행동:입력된 숫자를 2배 해서 반환해준다.
                return number*2;
}

##메소드 특징-매개변수(parameter)
```- (NSInteger)doubleNum:(NSInteger)number(뒷부분)```

-매개변수가 있을때는 쌍따옴표로 ( : )입력 부분을 구분
-매개변수는 타입과 변수명을 나눠쓴다.
-타입은 괄호 안에 작성된다.
-매개변수는 해당 함수 안에서만 사용가능하다.


##메소드 특징-반환값(return value)
```
- (NSInteger)doubleNum:(NSInteger)number

(반환타입)
{
   //행동: 입력된 숫자에 2배 후 반환.
    return number *2;
}
```
-반환값이 있는 경우 괄호 안에 반환 타입을 작성해준다.
-결과값 반환은 return 키워드를 사용하며 반환 타입과 같은 타입만 반환가능.
-return키워드 사용 시 그 이후에 작성된 코드는 실행되지 않으며 메소드를 종료한다.
-한 개의 값만 반환할 수 있다.
-반환값이 없는 경우는 반환 타입에는 void를 작성한다. > return 키워드 또한 사용할 필요가 없다.

##다중 매개변수 메소드
```
- (NSInteger)sumNum1:(NSInteger)num1 (매개변수1)
                num2:(NSInteger)num2 (매개변수2)

//행동 : 입력된 두 숫자를 더해 반환해준다.
return num1 + num2;
}
```





























