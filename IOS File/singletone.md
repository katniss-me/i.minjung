###singleton

- 어플리케이션 전 영역에 걸쳐 하나의 클래스의 단 하나의 인스턴스만(객체)생성하는 것을 싱글톤 패턴이라고 한다.
- 사용이유: 어플리케이션 내부에서 유일하게 하나만 필요한 객체에서 사용 (셋팅,데이터 등)
- 클래스 메소드로 객체를 만들며 static을 이용해서 단 1개의 인스턴스만 만든다.
- 앱 내에서 공유하는 객체를 만들 수 있다.


###singleton pattern 예제
* 프로그램 내부에서 하나의 객체만 존재 하게끔

//스크린 정보를 가지고 있는 객체
`
 UIScreen *screen = [UIScreen mainScreen];
 `
 : mainscreen > 이름

//사용자 정보를 저장하는 객체
`
    NSUserDefaults *data = [NSUserDefaults standardUserDefaults];
    `

//어플리케이션 객체 - 하나만 필요
`
  UIApplication *app = [UIApplication sharedApplication];
    `

//파일 시스템 정보를 가지고 있는 객체
`
    NSFileManager *fileManager = [NSFileManager defaultManager];
`

###NSUserDefaults

- 사용자의 정보를 저장하는 싱글톤 객체
- 간단한 사용자 정보를 저장/불러오기가 가능하게 만든 객체이다.
- 내부적으로 plist데이터에 저장되어 보안이 강하지 않다.


`` (NSUserDefaults*)standarduserDefaults;
``

//데이터 불러오기
`
-(nullable id)objectForKey:(NSString*)defaultName;
`

//데이터 저장하기
`
-(void)setobject:(nullable id)value forkey:(NSString*)defaultName;
`

//데이터 지우기
`
-(void)removeobjectforkey:(NSString*)defaultName;
`








    
    
    
    