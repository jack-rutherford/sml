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

(* Websites: 
    smlfamily.github.io
    https://stackoverflow.com/questions/7946853/sml-in-list-parameter-functions
    https://stackoverflow.com/questions/8555342/sml-get-element-from-the-list
    https://stackoverflow.com/questions/13359416/how-can-i-remove-subscript-out-of-bound-error
    https://stackoverflow.com/questions/49685124/convert-string-to-uppercase -- for use of Char.toUpper and for the x::xs pattern for strings
    https://stackoverflow.com/questions/52234652/char-tostring-without-special-handling-of-and
*)

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

gcd(12, 8);
gcd(8, 12);
gcd(12, 0);

(* 11 *)
fun allCaps(s) =
    if String.size(s) = 0 then 
        ""
    else if String.size(s) = 1 then 
        Char.toString(Char.toUpper(String.sub(s,0)))
    else 
        Char.toString(Char.toUpper(String.sub(s,0)))^allCaps(String.substring(s,1,String.size(s)-1));

allCaps("hello");
allCaps("hello world");
allCaps("hello world!");
allCaps("1hello world!1");
allCaps("1");
allCaps("");

(* 12 *)
fun firstCaps([]) = []
    | firstCaps(s::ss) = 
    if String.size(s) > 0 then 
        Char.toString(Char.toUpper(String.sub(s,0)))^String.substring(s,1,String.size(s)-1)::firstCaps(ss)
    else
        ""::firstCaps(ss);

firstCaps(["testing", "first", "caps", "method", "fully"]);
firstCaps(["testing", "first", "caps", "method", "fully", "1"]);
firstCaps(["hello"]);
firstCaps(["1"]);
firstCaps([""]);

(* 13 *)
fun swap([]) = []
    | swap([x]) = [x]
    | swap(x::y::xs) = y::x::swap(xs);

swap([1,2,3,4,5]);
swap([1]);
swap([1,2]);
swap([]);

(* 14 *)
fun rotate(n, []) = []
    | rotate(0, x::xs) = x::xs
    | rotate(n, x::xs) = rotate(n-1, xs@[x]);

rotate(3, [1,2,3,4,5]);
rotate(0, [1,2,3,4,5]);
rotate(5, [1,2,3,4,5]);
rotate(6, [1,2,3,4,5]);
rotate(0, []);
rotate(1, []);
rotate(0, [1]);