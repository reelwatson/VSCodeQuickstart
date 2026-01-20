@IsTest
private class OtherCSVTests {
    @TestSetup
    static void loadTestDataFromStaticResource() {
    // GIVEN
    List<sObject> accounts = Test.loadData(Account.SObjectType, 'otherAccountData');
  }

  @IsTest
  static void testLoadOtherAccountsFromStaticResource() {
    Test.startTest();
    List<Account> accts = [SELECT ID FROM Account];
    Test.stopTest();
    Assert.isTrue(accts.size() == 15, 'Expected to find 15 accounts.');
  }
}