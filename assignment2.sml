(* 15 *)
fun delete(n, s) =
    let
        val chars = String.explode(s)
        fun deleteFromList(0, _::xs) = xs
          | deleteFromList(n, x::xs) = x::deleteFromList(n-1, xs)
          | deleteFromList(_, []) = []
        val resultChars = deleteFromList(n, chars)
    in
        String.implode(resultChars)
    end;

(* 19 *)
fun delete2 n s = 
    let
        val chars = String.explode(s)
        fun deleteFromList(0, _::xs) = xs
          | deleteFromList(n, x::xs) = x::deleteFromList(n-1, xs)
          | deleteFromList(_, []) = []
        val resultChars = deleteFromList(n, chars)
    in
        String.implode(resultChars)
    end;

(* 20 *)
fun delete5(s) = 
    delete2 5 s;

(* 22 *)


(* 23 *)


(* 24 *)


(* 25 *)


(* 26 *)
datatype Natural = O | succ of Natural;

val zero = O;
val one = succ(zero);
val two = succ(one);
val three = succ(two);

(* 27 *)
fun convert(O) = 0
    | convert(succ(x)) = 1 + convert(x);


(* 28 *)


(* 29 *)


(* 30 *)

