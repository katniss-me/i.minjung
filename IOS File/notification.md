###NSNotificationCenter
- 불특정다수

####NSNotification 구조
1. 객체 A가 노티피케이션 센터에 자신이 노티피케이션을 받을 것이라고 등록
(addobserver) : 관찰자가 등록
2. 객체 B가 필요한 시점에 노티피케이션 송출 (postnotification) : 이벤트를 보낼사람
3. 노티피케이션센터에서 적절한 객체와 메소드를 찾아 호출

####system notification key

