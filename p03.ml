(* Find the K'th element of a list *)

let rec at k = function
  | [] -> None
  | h :: t -> if k = 1 then Some h else at (k - 1) t
;;

at 3 ["a";"b";"c";"d";"e";"f"];;

at 3 ["a"];;
