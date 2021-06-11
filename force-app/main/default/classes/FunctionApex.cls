public with sharing class FunctionApex {
    public static void test() {
        System.debug('Invoking myfunction');

        functions.Function myFunction = functions.Function.get('MyFunctionProject_betablitz.myfunction');
        functions.FunctionInvocation invocation = myFunction.invoke('{"fields":["Id","Name"]}');
        String jsonResponse = invocation.getResponse();

        System.debug('Response from myfunction ' + jsonResponse);
    }
}
