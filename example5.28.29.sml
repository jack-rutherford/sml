val fnlist = [fn (n) => 2*n, abs, ~, fn (n) => n*n];

fun construction (nil) (n) = nil
  | construction (h::t) (n) = (h n)::(construction t n);

construction fnlist (4);

val charStuff = construction [Char.isLower, Char.isUpper, Char.isDigit, Char.isPunct];

charStuff #".";
charStuff #"A";
