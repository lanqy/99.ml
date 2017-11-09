(* Remove the K'th element from a list. *)
let rec remove_at n = function
  | [] -> []
  | h :: t -> if n = 0 then t else h :: remove_at (n - 1) t;;

remove_at 1 ["a";"b";"c";"d"];;
