✔ 지금은 중요하지 않고 미래를 생각하여 얼마나 확장성 있게 설계하는지가 중요하다.   
✔ 겸손과 자만을 왔다갔다하며 창피해야하고 계속해서 배워나가야 한다.   
✔ 기본적인 기능을 먼저 만든 뒤 후에 요청이 오면 수정, 추가하도록 한다.   
✔ 복잡한 케이스보단 확실하고 단순한 케이스를 생각한 뒤 설계하고 코드를 작성하도록 한다.   
✔ 공통코드는 꼭 확인해서 공통화 할 수 있는 부분은 공통화 하도록 한다.   
✔ 코드를 단순하고 명확하게 작성할 것   
✔ 비즈니스 로직이 분명히 드러나도록 작성한다.   
✔ 많은 사람들이 리소스 메서드를 HTTP 메서드와 잘못 연결한다. 
Roy Fielding은 어떤 조건에서 어떤 방법(Get/Post/Put...)을 사용해야 하는지에 대한 권장사항을 언급한 적이 없다.
그가 강조한 것은 그것이 통일된 인터페이스여야 한다는 것이다.
예를들어, 대부분의 사람들이 HTTP PUT을 권장하는 대신 리소스를 업데이트하기 위해 애플리케이션 API가 HTTP POST를
사용하도록 결정하면 괜찮다는 것이다. 여전히 애플리케이션 인터페이스는 RESTful이다.   
✔ 유니크 인덱스더라도 범위검색조건(between, 부등호, like)으로 검색할 때는 Index Range Scan으로 처리된다.   
✔ 구분코드에 의해서 어떤 특정 컬럼이 MAX인 Row를 조회해 오고 싶다면 Top-N쿼리로 각 구분코드 최상값을 구해 
UNION ALL하지 않고, In-List와 Group by 구분코드를 이용해서 최상 값을 뽑아오는 방법이 있다.
성능 차이는 테스트해보지 않았으므로 나중에 이런 상황이 올 때 SQL Plan을 테스트 해보기로 한다.