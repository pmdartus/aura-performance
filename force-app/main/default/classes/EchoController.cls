public with sharing class EchoController {
    @AuraEnabled
    public static String echo(String msg) {
        return ('Echo: ' + msg);
    }
}
