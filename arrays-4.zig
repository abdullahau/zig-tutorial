const std = @import("std");

const a = [_]i32{ 1, 2, 3, 4, 5 };

pub fn main() void {

    // because `end` is declared var, it isn't compiled-time known
    var end: usize = 3;

    // but because it's a `var` we need to mutate it, else the compiler
    // will insist we make it `const`.
    end += 1;

    const b = a[1..end];

    const c = b[2..];

    std.debug.print("Array `a`:  {any}\n", .{a});
    std.debug.print("Type of 'a': {}\n", .{@TypeOf(a)});

    std.debug.print("Slice `b`:  {any}\n", .{b});
    std.debug.print("Type of 'b': {}\n", .{@TypeOf(b)});

    std.debug.print("Slice `c`:  {any}\n", .{c});
    std.debug.print("Type of 'c': {}\n", .{@TypeOf(c)});
}
