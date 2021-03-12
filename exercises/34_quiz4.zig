//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const std = @import("std");

const NumError = error{IllegalNumber};

pub fn main() void {
    const stdout = std.io.getStdOut().writer();

    var my_num: u32 = undefined;
    if (getNumber()) |value| {
        my_num = value;
    }
    else |err| {
        my_num = 42;
    }

    stdout.print("my_num={}\n", .{my_num}) catch |err| { return; };
}

// Just don't modify this function. It's "perfect" the way it is. :-)
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}
