(* Split a list into two parts; the length of the first part is given. *)

let split list n =
  let rec aux i acc = function
    | [] -> List.rev acc, []
    | h :: t as l -> if i = 0 then List.rev acc, l
                     else aux (i - 1) (h :: acc) t in
  aux n [] list;;

split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;

split ["a";"b";"c";"d"] 5;;
