###UIView Controller

####data marshaling
중개자
모든 컨트롤을 여기서 한다.
하나의 viewcontrolller안에 있는 모든 view나 객체는 모두 viewcontroller가 관리한다.

#####general view controller
1. UIViewController
2. UITableViewController
3. UICollectionViewController


#####container view controller
* 자체만으로 사용할 수 없고 , 차일드 애들을 어떻게 컨트롤 할수 있을까만 컨트롤한다.
1. UINavigationController
2. UITabbarController
3. UISplitViewController


#####general view controller

1. UIVController Root View = UIView
2. UITableController Root View = UITableView
3. UICollectionViewController = UIColectionView


#####UIViewController Object load
```
//storyboard만들기
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];

//2. 뷰컨트롤러 객체 만들기
   SecondViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
```
#####Using Xib
```
  XecondViewController *xvc = [[XecondViewController alloc]init];
  ```
  
#####  Present Modally
:밑에서 위로 올라오는 애니메이션
  
#####  dismissviewcontroller
:무조건 반대
  
#####  nextviewcontroller 객체 인스턴스화
  
  * Xib, Storyboard에 따라 객체 생성 방법이 다르다.

#####  Animation = transition 예제

#####기본 애니메이션 3개

1. presentModally
2. NavigationController
3. TabbarController

###Container View Controller
* uinavigationController class
* Navigation Controller Manage stacks of other view controllers :스텍구조이다


####* Navigation Controller 
:한 단계 디테일한 화면에 들어갈 때 사용 된다.



![img](https://docs-assets.developer.apple.com/published/83ef757907/nav_controllers_objects_a8447aef-d652-4ab9-85d1-1eb8e4876e12.jpg)

<br>
#####* Navigation Controller class 

![img](https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewControllerCatalog/Art/navigation_bar_objects.jpg)


<br>
#####* Navigation Controller interface
![img](https://docs-assets.developer.apple.com/published/83ef757907/NavigationViews_2x_e69e98a2-aaac-477e-9e33-92e633e29cc7.png)


#####* Navigation bar


#####* Costom Navigation bar


#####* Costom ToolBar 예제
- UI IMAGE 가능
- UI LABEL 가능

#####* ToolBar
- 


#####* TabBar Controller

- 아래 64 포인트 정해져있음
- 아래 네비게이션 5개 이상 안됨. (ex. 카카오 더보기 , 테이블이 생성됨)
  
  ![img](https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewControllerCatalog/Art/vc_tabbar_objects.jpg)
   
 - navigation controller와 flow가 다름, navigation은 처음부터 시작함
 - tabbar는 뷰가 달라질 뿐, 객체가 사라지지는 않는다.  
 - 
   
   
   
   
   
   
   
   .
   .
   .
   
   
   
   
   
   
   
   