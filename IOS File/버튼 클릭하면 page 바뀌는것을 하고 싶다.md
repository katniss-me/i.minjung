####* 버튼 클릭하면 page 바뀌는것을 하고 싶다.

1. Main storyboard에 view 버튼 올려놓기
2. 페이지 버튼 클릭 > 오른쪽에 inspector 보면, inspector bar > custom class에 보면
     Class 에 “Segmentedcontrol”이라고 써져있는것 확인하고,
3. Property list editor 에 가서, Viewcontroller.m 클릭하고,

```
 - (IBAction)pageClick:(UISegmentedControl *)sender
         If … or ```
    을 써넣는다.
sethidden은 가리는것이고, no 하면, 가리지 않겠다는것, yes는 가리는것.


```

- (IBAction)pageClick:(UISegmentedControl *)sender
{
    if (sender.selectedSegmentIndex == 0) {
        [self.baseView setHidden:NO];
    }else{
        [self.baseView setHidden:YES];
    }
```


4.다시 main storyboard로 들어가서, connection inspector 누르고 아래 connection bar가 생기면, 동그라미 클릭후 화면에 갖다 놓는다.

5.놓으면서 이벤트가 생기면, 
6.command+r run 시키면, 뜸


* 컴파일러에서 띄어쓰기도 하나의 문법
이름을 넣을때 공벅을 넣으면 안됨.
각각 단어가 끝나는 앞에 대문자로 쓰면 구분이 된다. 
안헷갈리게 하기 위해서 .
