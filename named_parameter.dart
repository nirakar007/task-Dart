void main (){
  print(add(first: 2, second:3, third: -1, fifth: 0, fourth: 1  )); // as you can see, the parameters can be placed jasari pani
}

int add({
  required int? first,  // requried to mandate data entry | '?' are null safety
  required int? second, 
  int? third,          
  int? fourth,
  int? fifth}){
    return first! + second! + (third ?? 0) + (fourth ?? 0) + fifth!; // '!' to assert nullable variable is not null
  }