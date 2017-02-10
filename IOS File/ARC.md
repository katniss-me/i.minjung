####* ARC
* 메모리 관리 방식
* automatic reference counting 의 약자
* 개발자가 직접 retain/release를 통해 reference counting을 관리해야하는 부분을 자동으로 해준다.
* 명시적 해제 :모든 것을 개발자가 관리함
* garvage collecter : 수시로 확인해서 안쓰는 객체를 해제시킴
* reference counting : 오너쉽 정책에 의해 객체의 해제 정의

####*할당방식
* 아무것도 안하면 기본 세팅은 : strong
* retain: 프로퍼티에 세팅할 때 retain count를 1 증가시킴
* unsafe unretained : 프로퍼티에 세팅할 때 retain count 변경없음


####*ARC 도입이유
- 앱의 비정상 종료 원인 중 많은 부분이 메모리 문제.
- 메모리 관리는 애플의 앱 승인거부의 대다수 원인 중 하나
- 수동적인 retain/release 메모리 관리로 힘들어함.
* instruments - allocation,leaks,zombies
* Xcode static analyzer
* heap
* objectAlloc


####*reference counting rules 
- alloc을 하면 retain count 1 증가
- retain을 호출하면 retain count가 1 증가
- release를 호출하면 retain count가 1 감소
- retain count가 0이 되면 객체가 메모리에서 해제된다
- dealloc을 호출하면 메모리에서 해제된다


####*automatic object memory management = ARC


####*ARC규칙
* retain,release,retaincount, autorelease, dealloc을 직접 호출 할 수 없다
* 구조체 내의 객체 포인트를 사용할 수 없다
* id 나 void \*type을 직접 형변환 시킬 수 없다.
* NSAutoreleasePoll 객체를 사용할 수 없다.


* 구조체보다 객체를 사용해라
* 컴파일러가 관리해준다
* _bridge 사용

####*새로운 지시어

* strong : 
* weak : 약한 참조 , 세입자 
* 오너쉽으로 메모리 관리를 한다.


<br>
####*strong 객체 선언
- 기본값 : strong


```
- @property(strong) NSString *str1;
- @property(strong) NSString *str2;
```

* 오너쉽이 있음 (owner ship :소유권)
* 레퍼런스 카운트가 해제된 시점 > {  } 이거 끝났을때.


<br>
####*weak 할당
 ```
 str2 = [NSString alloc] init;

 ```
 약한 참조로 만든 str2에 객체를 만들고 할당을 한다면?
  ```
 str2 = [NSString alloc] init;
 레퍼런스 카운트 0 > 0인 객체는 자동으로 해제되기 때문에
 str2=nil 이 된다.
 ```

<br>
####*weak 쓰는 이유?
```
str1 = [NSString alloc]init
str2 = str1
```

* 순환 참조 고리가 만들어진다. 순환참조를 막기 위해
* autorelease pool을 대신해서 자동 해제가 필요한 경우
* view의 strong참조 때문에.
* UI 관련해서도 weak 써야한다. 메모리 관리가 안되면 뒤에서부터 지워진다.
* addsubview는 소유권을 가졌기 때문에 
* UI를 가지고 있으면 weak로 하는게 좋다.
* self.view는 그냥 weak로 만들어 버리기도 한다. -->강사님은
* 일반적으로 가장 문제가 되는 것은 '순환참조'이다.


<br>

```
ex)
__weak 쓰면 
__weak NSString *str
```
----> weak가 된다.









