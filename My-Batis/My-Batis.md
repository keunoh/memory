1. mapper 인터페이스와 mapper.xml의 불일치

       1-1 에러 발생 : org.apache.ibatis.binding.BindingException: 
                     Invalid bound statement (not found)
       1-2 해결 방법 : mapper.xml 과 mapper Interface의 메서드이름이나 네임스페이스가
                     일치하는지 확인한다.
