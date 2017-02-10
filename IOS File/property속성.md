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

이렇게 property를 쓴다.

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
