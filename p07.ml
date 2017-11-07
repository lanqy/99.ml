(* There is no nested list type in OCaml, so we need to define one
     first. A node of a nested list is either an element, or a list of
     nodes. *)

type 'a node =
  | One of 'a
  | Many of 'a node list;;

  (* This function traverses the list, prepending any encountered elements
      to an accumulator, which flattens the list in inverse order. It can
      then be reversed to obtain the actual flattened list. *)


let flatten list =
  let rec aux acc = function
    | [] -> acc
    | One x :: t -> aux (x :: acc) t
    | Many l :: t -> aux (aux acc l) t in
  List.rev (aux [] list)
;;

flatten [ One "a"; Many [One "b";Many [One "c";One "d"];One "e"]];;
