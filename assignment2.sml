(* Websites: 
    smlfamily.github.io
    https://stackoverflow.com/questions/53838734/sml-map-a-filter
    https://www.cs.cornell.edu/courses/cs312/2008sp/recitations/rec03.html
    https://stackoverflow.com/questions/20555881/sml-map-function
    https://stackoverflow.com/questions/14603623/sml-case-and-pattern-matching
    https://stackoverflow.com/questions/24980801/what-are-the-options-some-and-none-in-sml
*)

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
fun remove bfun nil = nil
    | remove bfun (h::t) = 
        if bfun h then 
            h::remove bfun t
        else 
            remove bfun t;

fun lowCas(s) = 
    if Char.isLower(String.sub(s, 0)) then
        true
    else
        false;

(* map(fn lst => lowCas(lst)) ["Hello", "hi", "john", "Nicholas"]; *)
remove lowCas ["Hello", "hi", "john", "Nicholas"];
remove lowCas ["hello", "hi", "john", "nicholas"];
remove lowCas ["TESTING", "HEllO", "World"];
(* remove lowCas [""]; *)
(* remove lowCas []; *)

(* 23 *)
fun allCaps(s) =
    if String.size(s) = 0 then 
        ""
    else if String.size(s) = 1 then 
        Char.toString(Char.toUpper(String.sub(s,0)))
    else 
        Char.toString(Char.toUpper(String.sub(s,0)))^allCaps(String.substring(s,1,String.size(s)-1));

map(fn s => allCaps(s))["Hello", "hi", "john", "Nicholas"];
map(fn s => allCaps(s))[""];
(* map(fn s => allCaps(s))[]; *)

(* 24 *)
fun find(s, file) = 
    let
        val file = TextIO.openIn file
        fun readLine file = 
            case TextIO.inputLine file of
                NONE => ()
                | SOME line => 
                    if String.isSubstring s line then
                        (TextIO.output(TextIO.stdOut, line^"\n"); readLine file)
                    else
                        readLine file
    in
        readLine file
    end;

find("map", "assignment2.sml");
find("pam", "assignment2.sml");

(* 25 *)
fun transform f [] = []
    | transform f (x::xs) = 
    let val res = (f x) handle _ => x
    in
        res::transform f xs
    end;

fun posSquare x = if x < 0 then raise Fail "Negative Number" else x*x;

(* transform (fn x => x*x) [1,2,3,4,5,6,7];
transform (fn x => x*x) [2, 3.0, 4, 6];
transform (fn x => x*x) []; *)
transform posSquare [1,2,3,4,5,6,7];
transform posSquare [2, 3, ~4, 4, 6];
transform posSquare [];

(* 26 *)
datatype Natural = O | succ of Natural;

val zero = O;
val one = succ(zero);
val two = succ(one);
val three = succ(two);

(* 27 *)
fun convert(O) = 0
    | convert(succ(x)) = 1 + convert(x);

convert(three);
convert(two);

(* 28 *)


(* 29 *)


(* 30 *)

