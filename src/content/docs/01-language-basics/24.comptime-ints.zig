const expect = @import("std").testing.expect;

test "comptime_int" {
    const a = 12;
    const b = a + 10;

    const c: u4 = a;
    const d: f32 = b;

    try expect(c == 12);
    try expect(d == 22);
}
