const std = @import("std");

pub fn main() !void {}

const Interface = struct {
    // can call directly: iface.pick(iface)
    pickFn: fn (*Interface) i32,

    // allows calling: iface.pick()
    pub fn pick(iface: *Interface) i32 {
        return iface.pickFn(iface);
    }
};

const PickRandom = struct {
    // specific to PickRandom
    r: std.rand.DefaultPrng,

    // implement to interface
    interface: Interface,

    fn init() PickRandom {
        return .{
            .r = std.rand.DefaultPrng.init(0),
            // point the interface function poiter to our function
            .interface = Interface{ .pickFn = myPick },
        };
    }

    fn myPick(iface: *Interface) i32 {
        // compute pointer to PickRandom struct from interface member pointer
        const self = @fieldParentPtr(PickRandom, "interface", iface);
        return self.r.random.intRangeAtMost(i32, 10, 20);
    }
};
