public class TestBatchFromFlow {
   
    @InvocableMethod(label='オブジェクトチェック' description='チェック結果を返す' category='Contact')
    public static List<String> checkObjectValues(List<ID> ids) {
        System.debug('ids='+ids);
        List<Contact> checkObjects = [SELECT Id,name from Contact WHERE Id in :ids];
        BatchApexExample ba = new BatchApexExample();
        Database.executeBatch(ba);
        return null;
    }
   
}