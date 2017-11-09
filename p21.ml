(*  Insert an element at a given position into a list.  *)
let rec insert_at x n = function
  | [] -> [x]
  | h :: t as l -> if n = 0 then x :: l else h :: insert_at x (n - 1) t
;;

insert_at "alfa" 1 ["a";"b";"c";"d"];;

insert_at "alfa" 3 ["a";"b";"c";"d"];;

insert_at "alfa" 4 ["a";"b";"c";"d"];;
