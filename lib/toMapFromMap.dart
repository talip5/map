class ToMapFromMap{
  String name='';

  ToMapFromMap(String name){
    this.name=name;
  }

  Map<String,dynamic> toMap(String name,int number){
    return {'name':'$name','number':number};
  }


}