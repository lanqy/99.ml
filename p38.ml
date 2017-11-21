(* Compare the two methods of calculation Euler's totient function. *)
(* Naive [timeit] function. IT requires the [Unix] module to be loaded. *)

let timeit f a =
  let t0 = Unix.gettimeofday() in
  ignore(f a);
  let t1 = Unix.gettimeofday() in
  t1 -. t0;;

timeit phi 10090;;

timeit phi_improved 10090;;
