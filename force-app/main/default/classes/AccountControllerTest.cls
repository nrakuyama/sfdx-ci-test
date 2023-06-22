@isTest
public with sharing class AccountControllerTest {
  @isTest
  static void getAccounts_001() {
    List<Account> accounts = AccountController.getAccounts();
  }
}
