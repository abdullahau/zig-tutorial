const std = @import("std");

// all three variables are of type `[5]i32`
const a = [5]i32{ 1, 2, 3, 4, 5 };

// the .{...} syntax with structs functions the same way as when type is not declared
const b: [5]i32 = .{ 1, 2, 3, 4, 5 };

// use _ to let the compiler infer the length
const c = [_]i32{ 1, 2, 3, 4, 5 };

pub fn main() void {
    std.debug.print("Array `a`:  {any}\n", .{a});

    std.debug.print("Array `b`:  {any}\n", .{b});

    std.debug.print("Array `c`:  {any}\n", .{c});
}
