(* 2a: It truncates the operation to 2, does not convert to real number *)
(* 8 div 3; *)
(* 2b: Works as intended, returns 2 *)
(* 8 mod 3; *)
(* 2c: Gives an error that the operator at col 6 is not a function*)
(* "hi""there"; *)
(* 2d: Returns true because the right side of the orelse is not evaluated since the left side is true *)
(* 8 mod 3 = 8 div 3 orelse 4 div 0 = 4; *)
(* 2e: Throws an exception because the right side of the andalso is evaluated even though the left side is true *)
(* 8 mod 3 = 8 div 3 andalso 4 div 0 = 4; *)


(* 3 *)
if 8 mod 3 = 8 div 3 
then 
    true 
else 
    if 4 div 0 = 4 
    then 
        true 
    else 
        false;

(* 4 *)
(* if 8 mod 3 = 8 div 3
then
    if 4 div 0 = 4
    then 
        true 
    else 
        false
else
    false; *)

(* 5: Write an expression that converts a character to a string. *)
Char.toString(#"a");

(* 6: Write an expression that converts a real number to the next lower integer. *)
Real.floor(3.5);

(* 7: Write an expression that converts a character to an integer. *)
Char.ord(#"a");

(* 8: Write an expression that converts an integer to a character. *)
Char.chr(97);

(* 10 *)
fun gcd(x, y) =
    if y = 0
    then 
        x
    else
        gcd(y, x mod y);

(* 11 *)
fun allCaps(s) =
    if String.size(s) = 1 then 
        Char.toString(Char.toUpper(String.sub(s,0)))
    else 
        if Char.isAlpha(String.sub(s,0))
        then
            Char.toString(Char.toUpper(String.sub(s,0)))^allCaps(String.substring(s,1,String.size(s)-1))
        else
            Char.toString(String.sub(s,0))^allCaps(String.substring(s,1,String.size(s)-1));

(* 12 *)
fun firstCaps([]) = []
    | firstCaps(s::ss) = Char.toString(Char.toUpper(String.sub(s,0)))^String.substring(s,1,String.size(s)-1)::firstCaps(ss);

(* 13 *)
fun swap([]) = []
    | swap([x]) = [x]
    | swap(x::y::xs) = y::x::swap(xs);

(* 14 *)
