1.  Spring Batch에서 Mybatis를 이용할 경우 파라미터를 바인딩해주고 싶으면 Map<String, Object>를 itemReader메서드에서
    정의한 후 원하는 파라미터를 바인딩해주면 된다.

        1-1 itemReader(@Value("#{example}) String myName)   -> 파라미터 받기
            a. Job Parameter를 사용하기 위해선 항상 Spring Batch 전용 scope가 필요
            b. @Value("#{jobParamters[파라미터명]}") <- SpEL로 선언해서 사용하면 됨
        1-2 Map<String, Object> parameterValues = new HashMap<>();
               parameterValues.put("yourName", myName);
        1-3 ItemReader 빌더 체인메서드
               ...
               .parameterValues(parameterValues)
               .build();

2.  Spring Batch에서 하나의 Job은 여러 개의 step을 가질 수 있고, 하나의 스텝은 reader, processor, writer로
    구성되어 있다.

        2-1 Job : Step -> 1 : M 
        2-2 Step -> reader, processor, writer

3. @JobScope와 @StepScope
    - 스프링의 기본  Scope인 싱글톤 방식과는 대치되는 역할인데, Bean의 생성 시점이 스프링 애플리케이션이 실행되는 시점이 아닌 @JobScope, @StepScope가 명시된 메서드가 실행될 때까지 지연 시킬 수 있다.
    - Late Binding이라고도 한다.
    - 얻는 이점
      - JobParamter를 특정 메서드가 실행하는 시점까지 지연시켜 할당 시킬 수 있다.
      - 병렬처리에 안전하다. -> Step의 구성요소인 ItemReader, ItemProcessor, ItemWriter가 있고, ItemReader에서 데이터를 읽어오는 메서드를 서로 다른 Step으로 부터 동시에 병렬 실행 된다면 서로 상태를 간섭 받게 될 수 있다. 하지만 @StepScope를 적용하면 각각의 Step에서 실행될 때 서로의 상태를 침범하지 않고 처리를 완료 할 수 있다.

4. Spring Batch의 경우 외부 혹은 내부에서 파라미터를 받아 여러 Batch 컴포넌트에서 사용할 수 있게 지원하고 있다.
이 파라미터를 Job Parameter라고 한다. Job Parameter를 사용하기 위해선 항상 Spring Batch 전용 Scope를 선언해야만 함 
    - `ex) @Value("#{jobParameters[파라미터명]")`