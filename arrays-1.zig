const std = @import("std");

// A slice is a pointer to an array with a length, where the length is known at runtime
// We can think of a slice as a view into the array

const a = [5]i32{ 1, 2, 3, 4, 5 };
// `b` isn't a slice, but rather a pointer to an array of integers with a length of 3. Specifically, its type is `*const [3]i32`.
const b = a[1..4];

pub fn main() void {
    std.debug.print("Array `a`:  {any}\n", .{a});
    std.debug.print("Type of 'a': {}\n", .{@TypeOf(a)});

    std.debug.print("Slice `b`:  {any}\n", .{b});
    std.debug.print("Type of 'b': {}\n", .{@TypeOf(b)});
}
