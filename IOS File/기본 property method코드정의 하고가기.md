

####1. 프로퍼티 정의
```
@property id name;
              <데이터타입><프로퍼티이름>```

-객체가 가질수있는 특징/상태등의 값.

*최종적으로,
```
@interface Person : NSObject
@property id name;
@end
```


<br>
####2.메서드 정의

```- (id)methodName;```

최종적으로
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
####3.객체생성
```[클래스이름 alloc];```

객체초기화
```[객체 init];```

최종적으로,
```[[Person alloc] init];```

-컴퓨터는 객체를 생성하고 초기화한 후 객체가 메모리의 어떤 위치에 있는지 주소값을 알려준다.

1.생성된 객체를 프로그래머가 지속적으로 사용하려면 변수 또는 상수에 담아두고 있어야 한다.

2.객체의 주소값을 담을 변수를 생성해보자.


<br>
####4.변수생성

데이터타입 *변수이름 = 객체의 주소;
```
Person **me [[Person alloc] init];
```


#####-매개변수
-객체가 어떤 특정 행위를 하려면 부가적인 데이터 필요

타입과 이름을 매개변수라고 함.
```
- (id) eat;
```
여러번 부르면 
```
- (id) eat:(id)food;
```
구현부 안에서만 쓰임.

#####-구현
```
- (id)eat:(id)food {
NSLog(@"%@을 먹습니다",food);
return nil;
}
```
#####-호출
```
Person *me = [[Person alloc] init];
[me eat:@"사과"];
```

#####-매서드 정의
```
- (반환타입)메서드이름:(타입)내부이름
                   외부이름:(타입)내부이름...;
```
#####-매서드 구현
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
}```

<br>
#####-프로퍼티 접근

```
#import "Person.h"

int main(int argc, const char * argv[ ] ) {

Person *me = [[Person alloc] init];

return nil;
}
@end
```



















