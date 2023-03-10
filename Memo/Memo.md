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
✔ 개발할 때 Front와 Backend가 서로 의존하게 코드를 작성한 것 같다. 이런식으로 작성하면 확장성이 매우 떨어질 것으로
예상되므로 각각 의존하지 않고 독립적으로 개발될 수 있도록 작성해야한다.   
✔ 어차피 다시 수정해야하므로 일단 기능이던 문서던 양식대로 작성해 놓고 다 했다고 하는게 현명해 보인다.
혼나서 수정하던 양식이 바뀌어서 수정하던 결과는 같이 때문이다.   
✔ equals가 override되면 hashcode도 override되어야 한다. 그런데 A == B 는 여전히 false다. HashCode까지
오버라이딩 해야하는 이유는 무엇인가?   
    - 둘은 가깝게 연관이 있는데, 일단 hashcode는 HashSet, HashTable, HashMap등에서 사용된다.
      HashCode Method는 해당 객체의 유니크한 정수를 반환하고, 그 정수는 그 객체의 키이다.
      만약, 해시코드 또한 오버라이딩 하지 않는다면 결국에는 예상외의 에러를 만날 수 있다.
      예를들면, HashSet에 해당 객체를 넣어 나중에 되찾으려 할때 HashSet은 그 객체를 반환할 수 없을수도
      있을 것이다. equals로 동일하다 판단된 객체의 해시코드 값이 다르다면 값을 찾기 어렵기 때문이다.   
✔ 무엇이 RESTful한 것일 까?   
- Pretty URLs like /employees/3 aren't REST.
- Merely using GET, POST, etc. isn't REST.
- Having all the CRUD operations laid out isn't REST.   
이것은 RPC(Remote Procedure Call)이다. REST와 헷갈리면 안 된다.
- API가 hypertext로 드라이빙되지 않으면 RESTful이 될 수 없다.

✔ HyperText vs HyperMedia
- Spring HATEOAS
- hyperText는 유저를 다른 document로 이동 시키거나, 해당 document의 다른 부분들로 이동시키는 것이다.
- hyperMedia는 hyperText의 확장 개념으로써 텍스트 뿐만 아니라 이미지, 오디오, 비디오 등등 사용자에게 여러가지 상호작용을 제공한다.
- What is the point of adding all these links? It makes it possible to evolve REST services over time. Existing links can be maintained while new links can be added in the future. Newer clients may take advantage of the new links, while legacy clients can sustain themselves on the old links. This is especially helpful if services get relocated and moved around. As long as the link structure is maintained, clients can STILL find and interact with things.
- https://spring.io/guides/tutorials/rest/  -> 검색 : Evolving REST APIs