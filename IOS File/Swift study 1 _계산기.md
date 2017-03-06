- MVC패턴에서 View 부분이 storyboard 부분.
- controller에 연결하면 outlet과 action 부분이 있음


**1. func**

- class에 있는 function을 뜻함.


**2. var**

- 지역변수 local variable


**3. UIButton**

`
var currentTitle: String? { get }
`

- get은 읽기만 가능하다는 뜻

**4. var를 let으로 바꿔주는 것**
- 


```
   @IBOutlet weak var display: UILabel!
    
    
    @IBAction func touchDigit(sender: UIButton) {
      
        let digit = sender.currentTitle!
          print("touch \(digit)digit");
```

- 콘솔창에 이렇게 뜸
```
touch 3digit
```



**5. optional**
- optional = String
- !느낌표는 optional을 호출함
- ?물음표도 optional임
- optional은 text라는 메시지를 이해하지 못함.
- UILabel은 이해함.
- 


**6. String?**
- 관련된 값이 string타입인 optional이라는 뜻


**7. swift는 타입을 언제나 추정함**

**8. oulet은 method가 아니라 property 를 만들어 주는 것**

**9. optional을 set 할때**

`
 display!.text = nil //textCurrentlyDisplay + digit
 `

- nil은  set 되지 않은 optional을 뜻함
- 따라서 optional을 set할때는 nil 혹은 관련된 값(textCurrentlyDisplay + digit)으로 set함
- **이렇게 됨**


![스크린샷 2017-03-05 오후 8.05.50.png](/Users/katniss/Desktop/스크린샷 2017-03-05 오후 8.05.50.png)




