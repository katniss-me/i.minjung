
####* 프로퍼티 접근
-클래스 코드에 객체가 각자 가질 수 있는 상태값을 프로퍼티로 정의해 두었음
- set 과 get

you.name 나 me.name 
=you나 me 안에 있는 name.

" 000" =따옴표 안에 있는 것이 string, 문자열. 한글도 됨


####* set
   michel.physicalPower = @"80";

이런식.

####* get

    NSLog(@"michel 물리 공격력은 %@입니다.",michel.physicalPower);
    NSLog(@"lenden 마법 공격력은 %@입니다.",lenden.magicalPower);
    NSLog(@"nicole 성별은 %@입니다.",nicole.gender);

확인시켜줌.



####* 메서드

메서드는 행위.
동작을 mfile에 만듬
head up파일 =요약서

구현하는 부분은 중 가로를 쳐줌 {000} 이렇게.

* nil : 아무것도 없다
```
(id)talk 
=(반환타입)
=(return type)```

객체가 행위를 수행하도록 메서드를 실행해 봅니다.

####* 구현
``` - (id)work;
{
    NSLog(@"디자인을 합니다");
    return nil;
}```

####* 호출
-대 가로를 쓴다.

 ```[katniss talk];```
    
    
* quick help
option 키 누르고, 마우스 갖다대면 나타남.

* command 키를 누르고 궁금한 것 누르면, 안에 들어있는 파일로 들어가게 된다.
보통 m 파일은 가려져있음. 코드 비공개

* 퀵헬프 만드는 곳
*formatting quick help
http://goo.gl/8UTDUZ
하는법: 메소드 바로 위에 코드 넣기.



* /** (스위프트,주석에 *하나가 더 붙음)
메소드 바로 위에 쓰면 됨.

objective-c 는 @ (골뱅이) 가 붙음


####*참고링크

http://goo.gl/idJNx7

https://goo.gl/ENEuFd

 https://goo.gl/N93iuO

