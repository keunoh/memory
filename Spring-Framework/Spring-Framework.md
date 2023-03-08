1. RVO에 Getter, Setter가 없으면 바인딩 에러가 발생할 수 있다.

        1-1 com.fasterxml.jackson.databind.exc.InvalidDefinitionException: 
           No serializer found for class com.example.interfaces.dto.SampleDto 
           and no properties discovered to create BeanSerializer 
          (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)
        1-2 해결방안 : RVO에 Getter, Setter를 설정해준다.
2. Rest API에서 해당 타입과 다른 타입의 값을 바인딩하면 에러가 발생할 수 있다.

        2-1 ERROR[0;39m k.c.s.a.e.GlobalRestExceptionHandler  
            [36mk.c.s.a.e.GlobalRestExceptionHandler[0;39m [110]-  handleException  
            org.springframework.http.converter.HttpMessageNotReadableException: 
            JSON parse error: Cannot deserialize value of type `java.lang.Long` from 
            String "example": not a valid `java.lang.Long` value; nested exception 
            is com.fasterxml.jackson.databind.exc.InvalidFormatException: 
            Cannot deserialize value of type `java.lang.Long` from String "example": 
            not a valid `java.lang.Long` value
        2-2 해결방안 : PVO에서의 필드변수의 타입과 입력한 값이 Converting 될 수 있는지
                      확인한다.
3. JSON 데이터 형식에 주석처리를 할 경우 에러가 발생할 수 있다.

        3-1  handleException org.springframework.http.converter.HttpMessageNotReadableException:
             JSON parse error: Unexpected character ('/' (code 47)): maybe a (non-standard) comment?
             (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser); 
             nested exception is com.fasterxml.jackson.core.JsonParseException: 
             Unexpected character ('/' (code 47)): maybe a (non-standard) comment? 
             (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)
        3-2 해결방안 : 예를들어 PostMan에서 {
                                          //안녕 나는 주석
                                          "name": "james"
                                         }
                    이런식으로 주석 처리가 되었다면, JSON parse error 가 발생할 수 있으니 주석 삭제해줄 것