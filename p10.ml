(* Run-length encoding of a list. *)
let encode list =
  let rec aux count acc = function
    | [] -> [] (* Can only be reached if original list is empty *)
    | [x] -> (count + 1, x) :: acc
    | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t else aux 0 ((count + 1, a) :: acc) t
  in
  
  List.rev (aux 0 [] list);;

(* let encode list =
  List.map (fun l -> (List.length l, List.hd l)) (pack list);; *)

encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e"];;
