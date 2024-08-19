const expect = @import("std").testing.expect;

test "orelse" {
    const a: ?f32 = null;
    const fallback_value: f32 = 0;
    const b = a orelse fallback_value;
    try expect(b == 0);
    try expect(@TypeOf(b) == f32);
}
