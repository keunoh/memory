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

✔ 내 중심이 서있지 않으면 남들과 비교가 시작된다.
- 내가 이것을 하는 이유를 항상 기억하기 바란다.
- 존재하는지도 확실하지 않은 남들의 시선이나 기대를 위해 무언가를 한다면 그 의미는 '무'이다.
- 충분히 여유를 가지고 즐거움을 느낄 것.
- 배움이라는 것은 끝이 없음을 이미 인지하고 있기 때문에 긴 여행처럼 생각하며 한 발자국씩 나아가면 그만이다.
- 단계별로 나누어서 가장 기본이 되는 뼈대를 찾는 연습을 계속해서 하도록 하자.

✔ 나의 인생의 목적은 배움이다. 그것이 즐겁기 때문이다.
- 어떻게하여 항상 새로운 것을 배울 수 있고,  그 배운것을 적용할 수 있을까?
- 그런 환경에 지속적으로 나를 노출시키려고 해야한다.
- 정체되어있다는 생각이 들면 환경을 살피고 내 행동을 살펴라
- 침묵은 독이다. 나를 그런 환경으로 던지지 않는 것이기 때문이다.

✔ 배우는 것은 많을수록 좋다. 
- 그러나 남들에게 보여줄 때는 최대한 단순하고 확실한 것을 보여주어야 한다.
- 돌려말하는 것을 이해하는 사람은 적고, 사실 이해할 필요도 없다.
- 직관적으로 본인의 의지를 표현하는 것이 가장 빠른 길이다.
- 돌아가는 길은 스스로 생각하거나 행동할 때 알맞게 만족하면 된다.
- 남들과 무엇을 공유하려 할때는 최대한 단순하고 직관적으로 표현한다.
- 본인이 알고있는 애매한 지식을 설명하려 애쓰지마라.
- 차라리 모른다고 해라.
- 본인이 아는 것은 확실하고 쉽고 직관적으로 설명해라.
- 잘 몰라도 괜찮다는 오류에 빠져 어려운 것에 집착하고 있는것인지 확인해보라.
- 간단하고 확실하고 쉬운것을 내 것으로 익히는데 가장 많은 시간을 할애하라.

✔ 나도 모르게 또다시 경쟁 방식으로 무언가를 하고 있지는 않은가?
- 무엇을 위해 하는지가 중요하다.
- 도구는 도구일뿐 날을 가는데만 시간을 할애해서는 안 된다.
- 칼이라는 도구는 자르기 위해서 탄생했다.
- 프로그래밍도 결국 무언가를 만들고 기존의 방식을 탈피하기 위해 탄생한 것이 아닐까?

✔ 그냥해!! JUST DO!!!
- 방법론 따위 집어치우고 일단 그냥 해
- SQL BETWEEN에 대한 이해가 좀 부족한 듯 공부하자.

✔ 핵심 비즈니스 로직부터 작성
- 추후에 익셉션 관리

✔ 차분하도록하자
- 차분하게 내가 하고자하는 것을 이끌고 나아가자
- 말을 할 때도 조금 생각한 뒤에 말을 해도 괜찮다
- 생각보다 기다려 줄줄 안다
- SQL 성능을 내 생각대로 판단하지 않도록 하고, 기본구문을 확실하게 잘 써주도록하자
- 빠르게 판단하려 하지말자, 늦어도 괜찮다. 
- 시간은 많고 생각할 시간도 많으니 천천히 이끌어 나아가도록
