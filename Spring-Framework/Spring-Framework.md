1. RVO에 Getter, Setter가 없으면 바인딩 에러가 발생할 수 있다.

        1-1 com.fasterxml.jackson.databind.exc.InvalidDefinitionException: No serializer found for class com.example.interfaces.dto.SampleDto and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)
        1-2 해결방안 RVO에 Getter, Setter를 설정해준다.