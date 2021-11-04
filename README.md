# saas-hr
# Steps to run the app
1- bundle install
2- rails db:create
3- rails db:migrate
4- rails db:seed
# Missing features:
1- Api (Should integrate ASM)
2- Model Validations
3- Test cases (Rspec to be added)
4- Data integrity rules on DB level (MV core)
5- Enforcing method shape & entities columns requirements in Entities class
6- Using proxy table insted of polymorphic relation which should introduces a new class also EntityEmployeeRelation
7- Decouple employee from entity by applying the deletion of the relation table so we can keep the employee and his future data as it's
8- Creation of Country, City, Region, etc.. models and create relations with the enitities we have (Company, Branch)
9- Apply unique indices(cpk) as per the business rules, a company has one branch per city for example so a unique index can be introduced to enforce this rule on DB level and also model validations should be added