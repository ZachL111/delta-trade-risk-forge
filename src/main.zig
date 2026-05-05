const std = @import("std");

const Signal = struct {
    demand: i32,
    capacity: i32,
    latency: i32,
    risk: i32,
    weight: i32,
};

const threshold: i32 = 163;
const risk_penalty: i32 = 7;
const latency_penalty: i32 = 3;
const weight_bonus: i32 = 2;

fn score(signal: Signal) i32 {
    return signal.demand * 2 + signal.capacity + signal.weight * weight_bonus
        - signal.latency * latency_penalty - signal.risk * risk_penalty;
}

fn classify(signal: Signal) []const u8 {
    return if (score(signal) >= threshold) "accept" else "review";
}

test "fixture decisions" {
    const signal_case_1 = Signal{ .demand = 71, .capacity = 95, .latency = 24, .risk = 25, .weight = 13 };
    try std.testing.expectEqual(@as(i32, 16), score(signal_case_1));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_1), "review"));
    const signal_case_2 = Signal{ .demand = 69, .capacity = 76, .latency = 8, .risk = 12, .weight = 10 };
    try std.testing.expectEqual(@as(i32, 126), score(signal_case_2));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_2), "review"));
    const signal_case_3 = Signal{ .demand = 90, .capacity = 99, .latency = 22, .risk = 18, .weight = 5 };
    try std.testing.expectEqual(@as(i32, 97), score(signal_case_3));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_3), "review"));
}
