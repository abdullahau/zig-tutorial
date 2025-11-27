const std = @import("std");
const user = @import("models/user.zig");
const User = user.User;
const MAX_POWER = user.MAX_POWER;

pub fn main() void {
	const pikachu = User{
		.power = 10_000,
		.name = "Pikachu",
	};

	std.debug.print("{s}'s power is {d}\n", .{pikachu.name, pikachu.power});
}
