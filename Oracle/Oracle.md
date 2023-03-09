1. OS의 Lang 설정이 다르면 문자열을 묵시적으로 날짜로 변환을 못해서 발생하는 오류 

        1-1 ORA-01861: literal does not match format string
        1-2 해결방안 : OS의 Lang를 맞춰주어야 하는데 모든 애플리케이션 서버의 Lang을 세팅해야하므로
                     좋은 방법은 아니고, SQL에서 Date 형을 String 형으로 변환할 때는 TO_CHAR 함수를 
                     사용해주고 String형을 Date형으로 변환할 때는 TO_DATE 함수를 사용해준다.