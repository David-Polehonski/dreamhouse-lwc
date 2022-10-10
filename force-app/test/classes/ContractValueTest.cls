@IsTest
public class ContractValueTest {
    @IsTest
    public static void test_CustomContractStatus()
    {
        Account a = new Account(Name='testing');
        insert a;

        Contract c = new Contract(AccountId=a.Id);
        Test.startTest();
            c.status = 'Working_Draft';
            insert c;
            System.assertEquals('Working_Draft', c.status, 'Custom contract status is set');
        Test.stopTest();
    }

}
