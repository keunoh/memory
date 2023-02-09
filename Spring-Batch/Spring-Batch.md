1.  Spring Batch에서 파라미터를 바인딩해주고 싶으면 Map<String, Object>를 itemReader메서드에서
    정의한 후 원하는 파라미터를 바인딩해주면 된다.

        1-1 itemReader(@Value("#{example}) String myName)   -> 파라미터 받기
        1-2 Map<String, Object> parameterValues = new HashMap<>();
        	parameterValues.put("yourName", myName);
        1-3 ItemReader 빌더 체인메서드
        	...
        	.parameterValues(parameterValues)
        	.build();

2.  Spring Batch에서 하나의 Job은 여러 개의 step을 가질 수 있고, 하나의 스텝은 reader, processor, writer로
    구성되어 있다.

        2-1 Job : Step -> 1 : M - Step -> reader, processor, writer
