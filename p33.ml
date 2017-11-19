(* Determine whether two positive integer numbers are coprime.  *)
(* [gcd] is defined in the previous question *)
let coprime a b = gcd a b = 1;;

coprime 13 27;;

not (coprime 20538 7826);;
