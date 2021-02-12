import "dart:math";
import "dart:io";

double estimate_pi(n)
{
  
  var rnd = new Random();
  
  var num_of_circle  = 0;
  var num_of_total   = 0;
  
  for(var i = 0; i <=n; i++)
  {
    var x = rnd.nextDouble();
    var y = rnd.nextDouble();
    var distance = x*x + y*y;
    if(distance <= 1)
    {
      num_of_circle +=1;
   }
    num_of_total +=1;
  }
  
  var rn = 4 * num_of_circle/num_of_total;
  return rn;
}

void main()
{
  var a = stdin.readLineSync();
  var n = int.parse(a);
  var b = estimate_pi(n);
  print(b.runtimeType);
  print(b);
}