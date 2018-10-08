public Class ReleaseLabel1
{
public Account createAccount(String name)  //method to create account
{
//This is comment added to create conflict
Account a01= new Account();
a01.Name = name;
return a01;
}
}