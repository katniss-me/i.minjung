#calculator

##논리
#####--------정의--------------
1. 초기 calculator의 returnV 초기값이 0 이다.

2. operatorInput의 인자로 "=" 문자를 넣으면, returnValue값이 출력이 된다.

3. operatorArray 배열의 count를 센 후  count가 0이면, 연산자가 들어있지 않으므로, num이 returnValue에 들어간다.

4. operatorGet이라는 메소드로 operatorArray에 들어가있는 부호들을 꺼내쓸 수 있다.


#####----------구현--------------
1. 초기 input에 숫자나 부호를 넣는다.

2. oper배열에 count로 가서 operatorArray가 0이면 ruturnV , 숫자나 부호가 있으면,
     else문으로 가서, operatorGet으로  + , - , * , / 중 하나씩 맞는지 확인한다.

3. 맞는게 있으면 연산을 실행한다. 

4. 연산을 실행한 것은 ex) 0(returnV) = 0(+2) 이런식의 returnV값이 저장된다.

5. 저장된 returnValue값과  새로운 num을 연산한다.

6. 여기서 = 기호를 쓰면, 다시 operatorInput에 들어가 oper isEqualToString , 즉 returnValue 계산을 하고 끝.

7. =을 쓰지 않고, 더 연산할 게 있다면,


<br>
#####--------여기서부터 반복--------
1. =을 쓰지 않고 다른 부호나 숫자를 쓰면, 다시 inputNumAndCal로 들어간다.

2.  inputNumAndCal로 간 num은 if문에서 연산자가 들어가있으니 , 공백이 아니기 때문에 else로 간다.

3. 다시 +,-,*, / 의 operatorGet을 받은 후, 원래 있던 returnV와 새로운 num을 연산 한다. 

4. 그 후 사용자가 =을 쓰면, 계산된 값이 returnV에 남겨진다.







