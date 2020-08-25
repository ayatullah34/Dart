void main(){
  
    var personelManager= PersonelManager();
    personelManager.add();

    var customerManager = CustomerManager();

    var customer = Customer.withInfo("ali","dd");
    customerManager.add(customer);

    var customer2=Customer();
    customer2.firstName="veli";
    customer2.lastName="dd";

    customer = customer2;
    customer2.firstName = "Ahmet";

    customerManager.add(customer);

    var controller = PersonController();
    controller.operation(customer);

}

class PersonController{
   void operation(Person person){
     print("Inheritance demo : " + person.firstName);
   }
}


class PersonelManager{
  void add(){
      print("Eklendi!");
  }

  void update(){
      print("Güncellendi");
  }

  void delete(){
      print("Silindi");
  }
}


class CustomerManager{ 
  void add(Customer customer){
      print("Eklendi : "+ customer.firstName);
  }

  void update(){
      print("Güncellendi");
  }

  void delete(){
      print("Silindi");
  } 
}

class Customer extends Person{

 Customer(){

 }

Customer.withInfo(String firstName,String lastName){

    this.firstName=firstName;
    this.lastName=lastName;
}

}
 

class Personel extends Person{

 int dateOfStart;

Personel(){

 }

Personel.withInfo(String firstName,String lastName,int dateOfStart){

    this.firstName=firstName;
    this.lastName=lastName;
    this.dateOfStart=dateOfStart;
}

}

class Person{

 String firstName;
 String lastName;

}




