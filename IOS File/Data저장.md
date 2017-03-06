####데이터 저장 방법
- 파일저장 (property list, SQLite, 아카이빙)
- ios database이용
- network - server DB이용


####property list - plist
- 심플한 파일저장 방법 중 하나
- key, value구조로 데이터 저장
- 파일 형태로 저장되다 보니 외부에서 access가능

####파일 위치
- 파일이 저장되는 곳 vundle & documents 폴더
- documents 폴더: 읽고 쓰고가 가능한 폴더
- bundle: 읽고가 가능함, 프로젝트에 추가된 resorce가 모인 곳
- 프로그램이 실행되며 저장하는 파일은 documents폴더에 저장된다.
- 즉 plist파일의 데이터만 불러오는 역할은 bundle을 통해서, plist파일에 데이터를 쓰고 불러오는 역할은 documents폴더에 저장된 파일로.



####파일 불러오기

```
 NSString *bundlePath = [[NSBundle mainBundle] pathForResource:파일이름 ofType:파일타입];
    
    //file path
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:bundlePath];
```


####Plist File In Bundle
1. bundle 에 있는 파일 path가져오기
2. path를 통해 객체로 전환, 데이터 불러오기
3. 사용


####assets 이미지 사이즈

![스크린샷 2017-03-03 오후 12.18.21.png](/Users/katniss/Desktop/스크린샷 2017-03-03 오후 12.18.21.png)
- 2x 나 3x 쓴다.

####데이터 불러오는 코드

```
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:@"친구번호리스트"];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"plist"];
    NSArray *list = [NSArray arrayWithContentsOfFile:filePath];
    NSLog(@"list %@", list);
    
    //uiimage 가져올때 속도/ 데이터 차이
    UIImage *img = [UIImage imageNamed:@"cards.png"];
    //contentsfile 로 불러올때가 더 빠름
    UIImage *img2 = [UIImage imageWithContentsOfFile:imgPath];
    //해상도에 따라 다르게 불러옴
    UIImage *img3 = [UIImage imageNamed:@"cards@2x.png"];
 ```







