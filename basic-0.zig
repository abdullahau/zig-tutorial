const std = @import("std");

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
	const user = User{
		.power = 9001,
		.name = "Goku",
	};

	std.debug.print("{s}'s power is {d}\n", .{user.name, user.power});
}

// Type definition
// Since our program is a single file and therefore `User` is only 
// used in the file where it's defined, we didn't need to make it pub.
pub const User = struct {
	power: u64,
	name: []const u8,
};
