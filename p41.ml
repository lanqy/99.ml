(* A list of Goldbach compositions.  *)
(* [goldbach] is defined in the previous question *)

let rec goldbach_list a b =
  if a > b then [] else
    if a mod 2 = 1 then goldbach_list (a + 1) b
    else (a, goldbach a) :: goldbach_list (a + 2) b

let goldbach_limit a b lim =
  List.filter (fun (_, (a, b)) -> a > lim && b > lim) (goldbach_list a b);;

goldbach_list 9 20;;

goldbach_limit 1 2000 50;;
