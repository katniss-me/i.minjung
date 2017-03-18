###block

- objective-c 객체
- c 문법의 확장문법
- ^ 를 literal문법으로 시작시 사용
- 코드묶음
- 

- block문법 - 선언할때
```
^{
 NSLog(@"This is a block");
}
```


- 문법사용
```
void (^name)(NSInteger num)
```

- 이렇게 쓰임
```
void (^simpleblock)(void);
simpleblock = ^{
NSLog(@"This is a block");
};
```

- 객체는 변수에 들어갈 수 있는데 타입'

* share storage:_block
```
- (void)
```


###Block with Typedef
```
typledef void (^simpleblock)(void);
simpleblock anotherblock = ^{
 ...
};
```



