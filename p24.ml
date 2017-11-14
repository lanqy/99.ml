(* Lotto: Draw N different random numbers from the set 1..M. *)
(* [range] and [rand_select] defined in problems above *)
let lotto_select n m = rand_select (range 1 m) n;;

lotto_select 6 49;;
