- 설명 : 해당 번호의 asis와 tobe sql파일을 비교하면 된다.
- 여기서는 각 번호마다 어떤 내용이었는지 기술한다.

1. 구분코드를 이용해서 각 구분코드의 가장 최근에 변경된 값을 가져오는 문제였다. 
내 생각으론 각 구분코드를 TOP-N 쿼리를 이용해서 가장 최신 값을 조회해 오고 그것들을
UNION ALL하여 3개의 로우를 반환하도록 했었다. -> ChatGPT에게 리팩토링 요청해보니
Self-Join을 이용한다는 점이 재미있었다. 구분코드를 GROUP BY해서 IN-List로 각 구분코드별
최신 값을 구해오고 그 테이블을 원래 테이블과 조인했다. 추가로 공통코드 테이블과 LEFT JOIN
하여 구분코드에 따른 구분코드이름도 가져올 수 있도록 하였다는 점이 재미있었다.