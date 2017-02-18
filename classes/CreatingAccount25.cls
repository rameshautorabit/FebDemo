public Class CreatingAccount25
{
public Account createAccount(String name,String accNum)  
{
//modified the object variable name.
Account acc25= new Account();
acc25.Name = name;
acc25.AccountNumber = accNum;
return acc25;
}
}