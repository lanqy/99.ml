(* Find the last element of a list. *)

let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: t -> last t;;

last [1;2;3;4;5;6];;

last [];;

last [1];;
