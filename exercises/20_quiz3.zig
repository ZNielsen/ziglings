//
// Let's see if we can make use of some of things we've learned so far.
// We'll create two functions: one that contains a "for" loop and one
// that contains a "while" loop.
//
// Both of these are simply labeled "loop" below.
//
const std = @import("std");

pub fn main() void {
    const my_numbers = [4]u16{ 5, 6, 7, 8 };

    std.debug.print("{} ", .{twoToThe(5)});
    std.debug.print("{} ", .{twoToThe(6)});
    std.debug.print("{} ", .{twoToThe(7)});
    std.debug.print("{} ", .{twoToThe(8)});
    std.debug.print("\n", .{});
}

// This function bears a striking resemblance to twoToThe() in the last
// exercise. But don't be fooled! This one does the math without the aid
// of the standard library!
//
fn twoToThe(number: u16) u16 {
    var n: u16 = 0;
    var total: u16 = 1;

    while (n < number) : (n += 1) {
        total *= 2;
    }

    return total;
}
