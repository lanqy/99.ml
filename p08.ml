(* Eliminate consecutive duplicates of list elements. *)
let rec compress = function
  | a :: (b :: _ as t) -> if a = b then compress t else a :: compress t
  | smaller -> smaller
;;

compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"c"];;

compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e"];;
