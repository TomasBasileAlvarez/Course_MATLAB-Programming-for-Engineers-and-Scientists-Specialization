  % un array debe de ser homogeneo
  % un struct puede tener distintos field
  % cada uno con distintos tipos de elemencot
  
  
  r.ssn = 12345;
  class(r)
  r
  
  r.name = 'Homer simpson';
  r 
  r.address.street = '742 Evergreen';
  
  r
  
  
  
  account.number = 1232456;
  account.balance = 5000;
  account.owner.name = 'joe';
  account.owner.email = 'joe@adsfas';
  account
  
  %hacemos un segundo struct y ya tenemosu
  %un array de structs
  account(2).number = 12343531423
  account(2)
  %le crea todos los fields
  
  account(2).owner.name = 'jame';
  account(2).balance = 1234
  account(2)

  