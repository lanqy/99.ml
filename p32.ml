(* Determine the greatest common divisor of two positive integer numbers.  *)

let rec gcd a b =
  if b = 0 then a else gcd b (a mod b);;

gcd 13 27;;

gcd 20536 7826;;
