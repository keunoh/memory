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