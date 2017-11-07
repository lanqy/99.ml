(*  Reverse a list. *)

let rev list =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h :: acc) t in
  aux [] list
;;

rev ["a";"b";"c"];;
