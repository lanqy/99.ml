(* Find the last but one element of a list *)

let rec last_two = function
  | [] | [_] -> None
  | [x;y] -> Some (x,y)
  | _::t -> last_two t
;;

last_two ['a';'b';'c';'d'];;
last_two ['a'];;
