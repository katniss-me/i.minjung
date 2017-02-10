


###1. 프로퍼티 정의
```
@property id name;

 <데이터타입><프로퍼티이름>
 ```     

-객체가 가질수있는 특징/상태등의 값.

* 최종적으로,

```
@interface Person : NSObject
@property id name;
@end
```


<br>
###2.메서드 정의

```
- (id)methodName;
```

* 최종적으로

```
@interface Person : NSObject
@property id name;
- (id)talk;
@end
```


1.main.m이동
2.@import
3.객체생성

<br>
###3.객체생성

```
[클래스이름 alloc];
```

* 객체초기화
```
[객체 init];
```

* 최종적으로,
```
[[Person alloc] init];
```

*컴퓨터는 객체를 생성하고 초기화한 후 객체가 메모리의 어떤 위치에 있는지 주소값을 알려준다.

1.생성된 객체를 프로그래머가 지속적으로 사용하려면 변수 또는 상수에 담아두고 있어야 한다.

2.객체의 주소값을 담을 변수를 생성해보자.


<br>
###4.변수생성

데이터타입 *변수이름 = 객체의 주소;

```
Person **me [[Person alloc] init];
```


####5.매개변수
-객체가 어떤 특정 행위를 하려면 부가적인 데이터 필요

타입과 이름을 매개변수라고 함.

```
- (id) eat;
```

* 여러번 부르면 

```
- (id) eat:(id)food;
```

구현부 안에서만 쓰임.

###6.구현

```
- (id)eat:(id)food {
NSLog(@"%@을 먹습니다",food);
return nil;
}
```

###7.호출

```
Person *me = [[Person alloc] init];
[me eat:@"사과"];
```

###8.매서드 정의

```
- (반환타입)메서드이름:(타입)내부이름
             부이름:(타입)내부이름...;
```

###9.매서드 구현

```
- (id)runTo:(id)location bySpeed:(id)speed {
NSLog(@"%@로 달립니다.속도는%@입니다.", location,speed);
return nil;
}
```

<br>
```
- (id)runTo:(id)location bySpeed:(id)speed {
NSLog(@"%@의 속도로 달립니다.", location,speed);
return nil;
}
```

<br>
###10.프로퍼티 접근

```
#import "Person.h"

int main(int argc, const char * argv[ ] ) {

Person *me = [[Person alloc] init];

return nil;
}
@end
```



##* getter/ setter method

h 파일 - 메소드에 있는 name
implementation 파일 - * 변수 name 은 같으면 앞에 _를 붙인다. =>  *_name


##* property
:자동 접근자 메소드 생성 
:self
:안보이지만 자동적으로 사용
:변수가 어마어마하게 많이 만들어지는 걸 좋고 편하게 하기 위해  property를 쓴다.

ex) 
```
- (NSSTring *)name;
- (void)setName:(NSSTring *)name;
@end
```

* 이렇게 property를 쓴다.

```
@interface NewClass : NSObject
@property(nonatomic)NSString *name;
@end
```



<br>
* 밑의 두 코드는 정확히 같다.
* self.은 메소드를 사용하는 것이다.
```
self.name = newName;
[self setName:newName];
```

##* property속성

1. 이름 재정의

getter = newName
setter = newName

2. access권한

readonly
기본설정: readwhrite

3. thread처리

기본설정: atomic 멀티 쓰레드 시 method lock
nonatomic non atomic
동시에 접근이 온다 하더라도 한쪽을 먼저 주고, 다른 한 쪽을 막아놓음

atomic이 아닌 nonatomic을 쓰는 이유?
property를 몇 백개씩 쓰는데 동시에 접속할수도 있으니 문제가 생길 수 있다.


4. 할당방식

ARC - strong / weak
retain 할당
unsafe_unretained
strong
weak
assign
copy: copy라는 애들은 원본에 영향을 주지 않을 정도여야 씀 

5. null관리
기본설정:null_unspecified
null유무
swift때문에 null관리가 중요해짐



<br>
##*이름 재정의
* property의 getter와 setter를 수동으로 지정
* 기본 설정
- getter > property이름
- setter > set property이름

*bool변수의 경우는 getter의 이름을 is를 넣어서 만든다.

















<br>
