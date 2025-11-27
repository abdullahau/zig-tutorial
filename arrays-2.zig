const std = @import("std");

const a = [_]i32{ 1, 2, 3, 4, 5 };
// To get an actual slice by giving `b` an explicit slice-type
const b: []const i32 = a[1..4];

pub fn main() void {
    std.debug.print("Array `a`:  {any}\n", .{a});
    std.debug.print("Type of 'a': {}\n", .{@TypeOf(a)});

    std.debug.print("Slice `b`:  {any}\n", .{b});
    std.debug.print("Type of 'b': {}\n", .{@TypeOf(b)});
}
