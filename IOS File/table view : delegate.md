
##2. Table View




####* delegate

```
*delegate
명사 [|delɪgət]  동사 [|delɪgeɪt] 
1. (집단의 의사를 대표하는) 대표(자)   2. (권한・업무 등을) 위임하다   3. (대표를) 뽑다

```

#####*  정의
: "특정객체에서 발생한 이벤트를 다른 객체에게 통보할 수 있도록 해주는 선언이다"


#####* delegate 쉽게 이해하는 법

1. 한쪽에서는 사용을 하고 한쪽에서는 구현을 한다.
2. view controller에서 적힌 **시점** 은 정해져있고 view에서 호출하는 것이다.






<br>

####* 프로토콜 (delegate 방식을 쓰기 위해서 사용된 도구, 대리자)
* 메소드의 이름에 대해서 정의한 것
* 알고있는 객체는 당연히 이것이 있다는걸 알고 있다는 것
* 프로퍼티나 메소드에 접근을 하는 것
* 객체에 접근할 수 있는 방법. 어플리케이션이 역으로 이런 시점을 알려주기 위해서 delegate 메소드들을 통해서 알려주는 것이다.
* 자동으로 불릴 것이라는 걸 알려준다.
* 하위계층에 있는 아이가 상위계층에게 써야할 이벤트나 할일을 물어볼 때 쓰이는 스킬
* 사용을 하게 되면, 프로토콜 구현되어있는 클래스에서 불러옴
* 프로토콜과 delegate는 다른 것이다. 프로토콜을 사용한 것.





####*plain table views
- 기본적인 TableView
- 여러개의 section을 가질 수 있다.
- 한 section에는 여러개의 row를 포함하고 있다.
- 각각의 section에는 section을 표시하는 header, footer title을 사용할 수 있다.
- section을 빠르게 검색할 수 있는 네비게이터 바를 index list라고 부른다.

![img](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/TableView_iPhone/Art/tv_cell_parts_simple.jpg)


####*grouped table views
- 각 section을 group의 형태로 나타내는 테이블 뷰
- 데이터의 디테일한 정보를 표현할때 많이 사용된다.
- ex) 아이폰의 설정


####*data source

 @required (꼭 구현을 해야 됨)
 - 테이블 뷰의 각 섹션별 열의 개수를 설정
 - row별 cell객체
 
```
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
```
@optional
- 테이블 뷰 섹션의 개수를 설정




- 테이블의 나누어진 영역이 데이터소스에서는 섹션이다.
- 그룹으로 묶은 테이블에서 각 그룹은 섹션이다.
- 인덱스로 묶은 테이블에서는 데이터를 인덱스별로 묶은 것이 섹션이다.



<br>
######1. TableView data source
// 이것은 특정 섹션에 몇개의 행이 있는지 질의하는데 사용한다.

```
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
return [self.listData count];
}
```

<br>
######2. cellForRowAtIndexPath
: 1부터 100까지 테이블 뷰 만들고, 숫자 써넣기
```
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *view = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    view.dataSource = self;
    view.delegate = self;
    [self.view addSubview:view];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    

    }
    cell.textLabel.text = [[NSNumber numberWithInteger:indexPath.row] stringValue];
    NSLog(@"%ld",indexPath.row);
    return cell;
    
}

@end


```


######3. didSelectRowAtIndexPath
: TableView를 사용할 경우 지정된 행이 선택되었는지 알려줍니다.



<br>
@optional (구현을 해도 되고 안해도 됨)
```
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView; 
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;  
 
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section;
```
 
 
 <br>
 ####*중요한 문제 : viewDidLoad에 쓰는 이유?
 
 ```
 - 메모리관리 때문에. 
 - 메모리 시점 중요하다.
 - 다른 곳에 넣으면 , addsubview를 계속 구동되서 메모리를 잡아먹게 된다.
 - ex) 백번불리는 곳에 객체를 넣으면 백번 불림. 
 - viewWillAppear에 넣으면 화면전환이 될때 계속 불림. 
 - 메모리 warning 에 한번 더 불림. (메모리가 부족할때 한번 더 불림) viewDidLoad도 완전한것은 아님.
 ```
 
 <br>
 viewDidLoad , viewWillAppear, viewDidAppear  순서로 호출된다. 그럼 viewDidAppear 에서 이 글의 초반에 언급한 코드를 구현한다면 어떨까? 정상적으로 동작한다.
 -
view 가 화면에 보인다는 말은 view hierarchy 구조화가 완료 되었다는 의미이므로 이 구조에 새로운 view 를 view hierarchy에 추가하는 것 (presentModalViewController 를 호출하는 것) 은 정상적으로 동작한다.
-
아래 그림을 통해서도 viewWillAppear 메소드 이후에 view 가 window 에 삽입되는 것을 확인할 수 있다.

![img](https://soulpark.files.wordpress.com/2012/06/ec8aa4ed81aceba6b0ec83b7-2012-06-15-ec98a4ed9b84-1-21-43.png)


####* 결론
presentModalViewController 를 이용하여 화면 전환을 시도할 때, 기존 view 의 view hierarchy 가 정상적으로 구조화 되어 있어야 한다. view hierarchy 는 기본적으로 viewWillAppear 메소드가 호출된 다음에 완성되므로 viewDidLoad 메소드에서 presentModalViewController 를 호출하더라도 의도한 대로 화면이 전환되지 않는다. 

로그인 화면에서 자동 로그인을 통하여 화면 전환을 시도할 때 viewDidAppear 메소드 부분에서 디바이스에 저장된 사용자 정보를 획득하여 사용자 인증을 시도하면 된다. 실패할 경우 로그인 할 수 있는 Control (텍스트 필드, 버튼 등) 을 보여주면 되고, 정상적으로 인증된 경우 화면 전환을 시도하면 된다. (반복적으로 viewDidAppear 가 호출될 경우를 대비해 코드를 잘 짜야할 것 같다)

<br>
####* viewDidLoad 에서 persentModalViewController 을 수행시키는 방법

presentModalViewController 코드 수행부를 별도 메소드로 분리하고, viewDidLoad 메소드 안에서  
```
– (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay 
```
메소드를 이용하면 정상적으로 동작한다 – 포스팅 초반 일반적인 방법으로는 안된다고 한 이유이다.  그러나 delay = 0 으로 하고 동작을 시켜도 로그를 남겨 확인해보면  viewDidAppear 호출 이후에 메소드가 수행됨을 확인할 수 있다.


####* TableViewCell

contentview
textlabel
detailtextlabel
imageview
accessoryview

####* reuse (재사용)

-메모리관리차원
-tableviewcell을 재사용
-위에 올라간 테이블뷰가 화면에서 사라짐과 동시에 queue에 들어가게 됨
-밑에 테이블뷰는 addsubview로 올라옴
```

- (UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString)idntifier;
//dequeue >queue에서 빼서 reusablecell 셀을 재사용한다
//우리가 써야할 부분


- (UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString)idntifier;
                            forIndexPath:(NSIndexPath*)indexPath
//객체를 만들지 않아서 셧다운됨, 이건 스토리보드 쓸때 쓰는것
//가져올 게 없어서 셧다운됨
```

*cell칠때 cell부터 치면 빠름
.
.
.
.
.
.
.
.
.
.

.
..

.
.
.