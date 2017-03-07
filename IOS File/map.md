1. 내위치 보여줌/안보여줌 
`
@property (nonatomic) BOOL showsUserLocation;
`
- region : 지역
- span : 펼쳐진 영역 (zoom level)
- location coordinate : 좌표
- latitude : 위도
- longitude : 경도
 

```
    CLLocationCoordinate2D cordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(cordinate, span);
    [self.mapView setRegion:region];
```


* 사용자허용

1. info.plist항목추가 - ios10이상

- privacy - location when in use usage description: yes
- privacy - location always usage description: yes


* location manager 객체 생성 (CLLocationManager)


2. 현 위치 요청 인증
- [self.locationManager requestwheninuseauthoriaztion]
- [self.locationmanager requestalwaysquthorization];

2. 업데이트
- [self.locationmanager startupdatinglocation]
- [self.locationmanager stopupdatinglocation]


* Pin추가 (add annotation)
- 꼭 cordinate 라는 property가 필요

- pin은 기본적으로 mapview가 가짐, 우리는 coordinate위치값만 주면 됨
- 




