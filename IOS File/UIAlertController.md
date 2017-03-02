###UIAlertController

####*headerfile



-  @interface UIAlertAction : NSObject 

```
@interface UIAlertAction : NSObject <NSCopying>

+ (instancetype)actionWithTitle:(nullable NSString *)title style:(UIAlertActionStyle)style handler:(void (^ __nullable)(UIAlertAction *action))handler;

@property (nullable, nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) UIAlertActionStyle style;
@property (nonatomic, getter=isEnabled) BOOL enabled;
```


<br>
-  @interface UIAlertController : UIViewController 를 상속받음


```
+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle;

- (void)addAction:(UIAlertAction *)action;
@property (nonatomic, readonly) NSArray<UIAlertAction *> *actions;

@property (nonatomic, strong, nullable) UIAlertAction *preferredAction NS_AVAILABLE_IOS(9_0);

- (void)addTextFieldWithConfigurationHandler:(void (^ __nullable)(UITextField *textField))configurationHandler;
@property (nullable, nonatomic, readonly) NSArray<UITextField *> *textFields;

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *message;

@property (nonatomic, readonly) UIAlertControllerStyle preferredStyle;
```




<br>
###UIGestureRecognizer 종류

**@interface UITapGestureRecognizer : UIGestureRecognizer**
> @property (nonatomic) NSUInteger  numberOfTapsRequired;  


**@interface UISwipeGestureRecognizer : UIGestureRecognizer**
>@property(nonatomic) NSUInteger                        numberOfTouchesRequired 

**@interface UIPinchGestureRecognizer : UIGestureRecognizer**

>@property (nonatomic)          CGFloat scale;


**@interface UIRotationGestureRecognizer : UIGestureRecognizer**

>@property (nonatomic)          CGFloat rotation; 

**@interface UIPanGestureRecognizer : UIGestureRecognizer** 

>@property (nonatomic)          NSUInteger minimumNumberOfTouches    
@property (nonatomic)          NSUInteger maximumNumberOfTouches


###IMAGE Picker

- 다양한 소스로부터 사진을 가져오는 기능이 구현되어있는 클래스
- 사진 소스에는 라이브러리, 사진앨범, 카메라 등이 있다.
- 옵션을 주어 사진을 가져올 때 사용자에게 정사각형으로 편집할 수 있도록 할 수 있다.

- ios10 부터 사용자의 데이터에 접근하기 위해서 접근권한을 설정해야된다.
- (info.plist에 사용목적 작성)
- 항목


![스크린샷 2017-03-02 오후 4.24.44.png](/Users/katniss/Desktop/스크린샷 2017-03-02 오후 4.24.44.png)


####photo library
![스크린샷 2017-03-02 오후 4.12.25.png](/Users/katniss/Desktop/스크린샷 2017-03-02 오후 4.12.25.png)


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
.
.
.
.

.




