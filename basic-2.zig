const std = @import("std");

// `main` function is the entry point into the program.
// no parameters are passed into main and it returns nothing (aka `void`).
pub fn main() void {
	const sum = add(8999, 2);
	std.debug.print("8999 + 2 = {d}\n", .{sum});
}

// function parameters are constants and cannot be changed inside the function.
// No function overloading.
fn add(a: i64, b: i64) i64 {
	return a + b;
}
