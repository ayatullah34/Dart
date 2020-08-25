void main(){

var dictionary= new Map();
dictionary["book"]="kitap";
dictionary["little"]="az";

//key-value
var dictionary2 = {"kitap":"book","az":"little"};

dictionary2["büyük"] = "big";


print(dictionary);
print("---------------------");


print(dictionary2);
print("---------------------");


dictionary.remove("book");
print(dictionary);
print("---------------------");


 for(var key in dictionary2.keys){
      print(key + " : " + dictionary2[key]);
 }
print("---------------------");


 for(var value in dictionary2.values){
      print(value);
 }
print("---------------------");


 print(dictionary2.containsKey("kitap"));//true
print("---------------------");


print(dictionary2.containsKey("keys"));//false
print("---------------------");

dictionary2.forEach((k,v) =>{

    print(k + ":" + v )

});

}

