## 비트 연산자

### 1. AND 연산
두 정수 변수 a와 b를 통해서 c를 생성한다고 가정하면, a와 b를 한 bit씩 비교하면서 해당 비트가 둘 다 켜져 있는 경우에만 c의 해당 비트를 켠다.

C에서 제공하는 연산자 기호는 ' & '이다.

(ex. c = a & b)

### 2. OR 연산

AND 연산과 같은 방식으로, 해당 비트가 둘 중 하나라도 켜져 있는 경우에 c의 해당 비트를 켠다.

C에서 제공하는 연산자 기호는 ' |  (shift + \) ' 이다.

(ex. c = a | b)

### 3. XOR 연산

마찬가지로 같은 방식이며, 해당 비트가 둘 중 하나만 켜져 있는 경우에 c의 해당 비트를 켠다.

C에서 제공하는 연산자 기호는 ' ^ ' 이다.

(ex. c = a ^ b)

### 4. NOT 연산

정수 하나를 입력받아서 켜져 있는 비트는 끄고, 꺼져 있는 비트는 켠 결과를 반환한다.

C에서 제공하는 연산자 기호는 ' ~ ' 이다.

(ex. c = ~a)

### 5. 시프트(shift) 연산

시프트 연산자는 정수 a의 비트들을 왼쪽 또는 오른쪽으로 원하는 만큼 움직인다. 움직이고 나서 빈자리는 0으로 채워지게 된다. 예를 들어 13 (1101)을 오른쪽으로 1bit 움직인다고 하면, 6 (0110)이 되는 것이다. 

C에서 제공하는 연산자 기호는 ' << ' 또는 ' >> ' 이다.

(ex. c = (a << 1) ) 

<img width="400" alt="image" src="https://github.com/scottXchoo/Algorithm_Problem_Solving/assets/107841492/b3659309-8700-43e3-a5d9-e3ce2d5c81c0">