const std = @import("std");

pub fn main() void {
    const user = User{
        .power = 9001,
        .name = "Goku",
    };

    std.debug.print("{s}'s power is {d}\n", .{ user.name, user.power });
    // call diagnose on user
    user.diagnose();

    // The above is syntactical sugar for:
    User.diagnose(user);
}

// Structs can have methods, they can contain declarations (including other structs)
// and they might even contain zero fields, at which point they act more like a namespace.
pub const User = struct {
    power: u64 = 0,
    name: []const u8,

    pub const SUPER_POWER = 9000;

    pub fn diagnose(user: User) void {
        if (user.power >= SUPER_POWER) {
            std.debug.print("it's over {d}!!!\n", .{SUPER_POWER});
        }
    }
};
