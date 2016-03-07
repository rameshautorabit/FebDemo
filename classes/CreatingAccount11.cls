public Class CreatingAccount11
{
public Account createAccount(String name,String accNum)  //create account test
{
Account acc1= new Account();
acc1.Name = name;
acc1.AccountNumber = accNum;
return acc1;
}
}