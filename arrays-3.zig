const std = @import("std");

const a = [_]i32{ 1, 2, 3, 4, 5 };

pub fn main() void {

    // because `end` is declared var, it isn't compiled-time known
    var end: usize = 3;

    // but because it's a `var` we need to mutate it, else the compiler
    // will insist we make it `const`.
    end += 1;

    const b = a[1..end];

    std.debug.print("Array `a`:  {any}\n", .{a});
    std.debug.print("Type of 'a': {}\n", .{@TypeOf(a)});

    std.debug.print("Slice `b`:  {any}\n", .{b});
    // `b` is now a proper slice, specifically its type is `[]const i32`.
    // You can see that the length of the slice isn't part of the type,
    // because the length is a runtime property, and types are always fully known at compile time.
    std.debug.print("Type of 'b': {}\n", .{@TypeOf(b)});
}
