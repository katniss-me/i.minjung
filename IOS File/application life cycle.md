##1.  Application Life Cycle
* application delegate는 UIWindow를 만든다.
* view controllet를 가지고 있음
* mvc패턴을 가지고 있음
* thread는 통로같은 것. 
* 하나의 기본 main thread가 필요한데 main loop로 가서 일을 하게 된다.

##### The main function
모든 C언어 기반의 프로그램의 시작점은 main 함수입니다.
```
#import <UIKit/UIKit.h>
#import "AppDelegate.h"
 
int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

```
UIApplicationMain 함수는 여러분의 앱에 몇가지 중요한 객체를 생성하고 스토리보드에서 UI를 로딩하고 앱의 초기 셋팅값(info.plist)을 불러오고 앱을 Run loop에 올려 놓으며 함수를 진행시킵니다. 여러분이 넘겨주는 값은 스토리보드파일과 앱 초기셋팅 정보 뿐입니다.


<br>

![img](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)
* 대부분의 앱에서 공통으로 사용되는 객체를 보여주고 있고 그 객체들의 역할에 대해서 설명하고 있다.
이 디자인패턴은 앱의 Data와 비지니스 로직을 UI요소로부터 분리를 시켜줍니다. 이 패턴 덕분에 서로다른 사이즈의 디바이스에서도 앱의 동작이 가능합니다.
출처: http://rhammer.tistory.com/94 [고무망치]


<br>
####* MVC패턴 (model view controller)
--프로그램의 유지보수를 쉽게 그리고 단위 테스트 할 수 있게 라는 목표를 가짐
--model : 데이터에 관한 로직을 담는 부분
--view : 사용자에게 보여지는 화면
--controller는 model과 view간의 동작을 관리해줌

예)
계산기 프로그램이 있다면, 사용자가 숫자를 입력함으로써 view에 변화를 주면, controller는 view로 입력된 값을 model로 전달해주는 역할을 한다. model에서 값이 계산되면 그 값을 controller가 view에 전달하여 계산된 값으로 화면을 갱신한다. 

==**따라서 프로그램의 ui를 바꾸고 싶다면 view부분만 바꿔주면 되고, 로직을 바꾸고 싶다면 model부분을 바꿔주면 된다.**==

==**결과적으로 프로그램이 커져도 유지보수가 상대적으로 쉽다.**==






###* Event에 대한 처리
1. touch:발생된 이벤트에 대한 뷰가 처리
2. remote control & shake motion events : first responde객체
3. acceleromether/magnetometer/gyroscope :각각의 객체로 전달
4. location:corelocation 객체
5. redraw :업데이트를 원하는 뷰가 처리

![img](http://cfile23.uf.tistory.com/image/26767C3E569215E00EF1E3)
* 사용자가 디바이스에서 특정 액션을 취하면, 그 액션에 해당하는 이벤트가 시스템에 의해 생성되어 UIKit에서 생성한 port를 통해 앱에 전달됩니다. 이벤트들은 앱 내부적으로 큐에 저장된 채 차례대로 해당 동작이 실행되게 됩니다.
*  UIApplication객체가 가장 먼저 이 이벤트를 받아서 어떤 동작이 취해질 지 결정합니다. 터치 이벤트의 경우 main window 객체가 인식하고 window 객체가 다시 터치가 발생한 view로 이벤트를 전달합니다. 다른 이벤트들도 다양한 app 객체들에 따라 조금씩 다르게 작동합니다.



###* 앱의 상태  (excution states for apps)
* 앱은 항상 아래 테이블에 있는 상태중 하나의 상태를 가집니다. 시스템 내에서 일어나는 액션들을 통해 시스템은 앱의 상태를 바꾸게 됩니다. 
* 예를 들어 사용자가 홈버튼을 누르거나, 전화가 오거나, 다른 어떤 인터럽트의 발생으로 인해 현재 실행중인 앱은 상태를 바꾸게 됩니다.


1. foreground <->background <-> suspended

2. 보통은 os로 관리를 함 > 자동적으로 suspend 시킴 -메모리 많이 먹는다든지..처음부터 시작을 함

3. not running : 아직 실행되지 않았거나 실행되다가 시스템에 의해 종료된 상태 

4. inactive : 앱이 Foreground에 올라와 있지만 이벤트를 받지 않고 있는 상태(다른 코드를 실행 중일 수도 있다.앱에서는 보통 앱 상태변화가 일어나는 동안에 짧게 이 상태를 갖게됩니다. 

5. active : 앱이 Foreground에서 실행중이고 이벤트를 받고 있는 상태. Foreground에 올라와 있는 앱은 대부분 이 상태를 갖고있습니다. 


6. background : 앱이 Background에 있고 코드를 실행하고 있는 상태. 대부분의 앱은 Suspended상태로 가는 도중에 잠깐 이 상태를 갖게됩니다. Background상태에서 추가적인 코드수행시간이 필요햔 앱일 경우에는 좀 더 머무를수도 있습니다. 외에도 Background상태로 실행이 되는 앱의 경우에는 Inactive상태 대신 Background상태로 진입합니다. Background에서의 코드실행은 Background Execution을 살펴보세요.



7. suspended : 백그라운드에서 멈춘 상태. 메모리가 부족할때 시스템 강제종료 됨, 따로 알려주지 않는다.


###* call to the methodes of your app delegate object
==** 이부분은 정확하게 알고 있어야 함*==

* **method **
: ui 어플리케이션 객체가 호출을 함.

<br>

* **application:willFinishLaunchingwithOptions:**
-- 어플리케이션이 최초 실행될 때 호출되는 메소드

* **application:didFinishLaunchingwithOptions:**
-- 어플리케이션이 실행된 직후 사용자의 화면에 보여지기 직전에 호출
(* 앱의 화면이 사용자에게 보여지기 직전에 최종 초기화 작업을 진행할 수 있습니다.)


* **applicationDidBecomeActive:**
-- 어플리케이션이 Active상태로 전환된 직후 호출
(* 앱이 이제 Foreground로 갈 것이라고 알려줍니다. 최종 준비작업을 하세요.)

* **applicationWillResignActive**:
-- 어플리케이션이 Inactive 상태로 전환되기 직전에 호출
(* 앱이 Foreground에서 다른 상태로 전환이 될것임을 알려줍니다. 앱이 조용한(quiescent) 상태로 변환되는 작업을 여기서 진행하세요.)

* **applicationDidEnterBackground:**
-- 어플리케이션이 백그라운드 상태로 전환된 직후 호출
(*앱이 Background에서 돌아가게 될 것임을 알려줍니다. 그리고 언제든지 Suspended상태로 변환이 될 수 있습니다.)
* **applicationWillEnterForegrond:**
-- 어플리케이션이 active상태가 되기 직전에, 화면에 보여지기 직전의 시점에 호출
(* 앱이 Background에서 다시 Foreground로 돌아오게 될 것임을 알려줍니다. 하지만 아직 앱이 Active상태는 아닙니다.)

* **application:WillFinishLaunchingwithOptions**:
-- 어플리케이션이 종료되기 직전에 호출
(*앱이 종료될 것임을 알려줍니다. 만약 앱이 Suspended상태라면 이 메소드는 호출되지 않습니다.)



<br>
* cmd+shift+h 시뮬레이터 단축키

###*Step of enter background


![img](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/app_launch_bg_2x.png)


<br>
###*supported background tasks
* 음악 : audio and airplay
* 위치정보 : location updates
* 인터넷을 사용한 음성통화 voice over IP
* 뉴스스탠드 다운로드 : newsstand downloads 
* 기타 하드웨어 액세사리 (external accessory communication)
* 블루투스 액세사리 사용 (bluetooth LE accessories)
* 네트워크를 통한 일반적인 다운로드나 미완료된 작업 (background fetch)
* push notification (remote notifications)

==**이 외에는  background 러닝을 하지 않는다.*==

delegate는 
overide 된 것

###* UIViewController의 생명주기 메소드
* 프로그래머가 직접 호출 불가
* 오버라이드하는 메소드이므로 꼭 해당 메소드 내에서 [super 메소드]를 통해 기존 메소드를 꼭 호출해야한다.
![img](https://cdn-images-1.medium.com/max/800/1*etDLgjBamDJoiaM3_hie9A.png)

* **- (void)loadView; **
-- UIViewController의 view가 생성될 때 호출
// This is where subclasses should create their custom view hierarchy if they aren't using a nib. Should never be called directly.

* **- (void)viewDidUnload **
-- UIViewController가 인스턴스화 된 직후(메모리에 객체가 올라간 직후) 호출 처음 한번 세팅해 줘야 하는 값들을 넣기에 적절
// Called after the view controller's view is released and set to nil. For example, a memory warning which causes the view to be purged. Not invoked as a result of -dealloc.

* **- (void)viewWillAppear:(BOOL)animated;  **
-- view가 화면에 보여지기 직전에 호출 화면이 보여지기 전에 준비할 때 사용.
-- animated 파라미터는 뷰가 애니메이션을 동반하여 보여지게 되는지 시스템에서 전달해주는 불리언 값.
// Called when the view is about to made visible. Default does nothing

* **- (void)viewWillDisappear:(BOOL)animated;  **
-- view가 화면에 보여지기 직전에 호출 화면이 보여지기 전에 준비할 때 사용.
-- animated 파라미터는 뷰가 애니메이션을 동반하여 보여지게 되는지 시스템에서 전달해주는 불리언 값.

* **- (void)viewDidDisappear:(BOOL)animated;  **
-- view가 화면에서 사라지기 직전에 호출
// Called after the view was dismissed, covered or otherwise hidden. Default does nothing

* **- (void)dealloc;**
사라지는 것은 오토레퍼런스 카운트에서 알아서 하니까 super쓰면 안된다.



####App Termination

앱은 언제든지 종료될 수 있기 때문에 항상 앱 종료에 대한 대비를 하여 사용자 데이터를 저장하거나 크리티컬한 작업을 수행할 수 있어야 합니다. 시스템에서 앱을 종료시키는 건 앱의 Life Cycle에 따라 아주 자연스러운 부분입니다. 시스템은 주로 다른 앱을 위한 메모리 확보를 위해 앱을 종료시키게 됩니다. 하지만 시스템은 앱의 오작동이나 이벤트에 적절한 대처가 없을 경우에도 종료를 시키게 됩니다.




<br>
####예제 : storyboard
1. editer > embeded > navigation controller
button > 다음 뷰 컨트롤러 action > action 에 > show 누름






/
/
/
/
/
/
/
/
/
/
/

/
/
/
/
/
/
/
/
/



