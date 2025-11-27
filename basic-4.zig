const std = @import("std");

pub fn main() void {
    const user: User = User{
        .power = 9001,
        .name = "Goku",
    };

    std.debug.print("{s}'s power is {d}\n", .{ user.name, user.power });
}

// init function to initiate our structure
pub const User = struct {
    power: u64 = 0,
    name: []const u8,

    pub fn init(name: []const u8, power: u64) User {
        return User{ .name = name, .power = power };
    }
};
