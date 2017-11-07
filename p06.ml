(* Find out whether a list is a palindrome.  *)

let is_palindrome list =
  list = List.rev list
;;

(* One can use either the rev function from the previous problem, or the
     built-in List.rev *)

is_palindrome ["x";"a";"m";"a";"x"];;

not (is_palindrome ["a";"b"]);;
