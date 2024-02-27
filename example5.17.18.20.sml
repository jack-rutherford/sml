datatype TokenType = Identifier | Keyword | Number | Add | Sub | Times | Divide | LParen | RParen | EOF | Unrecognized;

datatype AST = 
	 add' of AST * AST
       | sub' of AST * AST
       | prod' of AST * AST
       | div' of AST * AST
       | negate' of AST
       | integer' of int
       | store' of AST
       | recall';

(* "min" stands for "memory in"; "mout" stands for "memory out" *)
fun evaluate(add'(e1,e2),min:int) = 
    let val (r1,mout1) = evaluate(e1,min)
	    val (r2,mout) = evaluate(e2,mout1)
    in
	    (r1+r2,mout)
    end

  | evaluate(sub'(e1,e2),min) = 
    let val (r1,mout1) = evaluate(e1,min)
	    val (r2,mout) = evaluate(e2,mout1)
    in
	    (r1-r2,mout)
    end

  | evaluate(integer'(value:int),min) = (value,min)
  
  | evaluate(_, min) = (0,0);
  
evaluate(add'(integer'(3),integer'(4)),0);

val ex519 = add'(store'(negate'(integer'(6))), recall');
(* evaluate(ex519,0); *)

