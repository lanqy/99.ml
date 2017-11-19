(* Determine whether a given integer number is prime. *)
let is_prime n =
  let n = abs n in
  let rec is_not_divisor d =
    d * d > n || (n mod d <> 0 && is_not_divisor (d + 1)) in
  n <> 1 && is_not_divisor 2;;

not (is_prime 1);;

is_prime 7;;

not (is_prime 12);
