let fun a() =
		let val x = 1
			fun b() = x
		in
			b
		end
    val x = 2
    val c = a()
in
    c()
end
