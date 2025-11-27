const std = @import("std");

pub fn main() void {
    // to write into `b` at specified index, we need `a` to be of type `var`
    var a = [_]i32{ 1, 2, 3, 4, 5 };
    var end: usize = 4;
    end += 1;
    // A slice is a length and pointer to [part of] an array. A slice's type is always derived from what it is slicing.
    const b = a[1..end];
    // This works because our slice is no longer `[]const i32` but rather `[]i32`, even when `b` is a const.
    b[2] = 99;
    // b = b[1..]; -> this won't work because `b` is a const and not a var.
    std.debug.print("Array a = {any}\n", .{a});
    std.debug.print("Array b = {any}\n", .{b});
    std.debug.print("{any}\n", .{@TypeOf(b)});
}
