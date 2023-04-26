import gleam/list

pub fn accumulate(list: List(a), fun: fn(a) -> b) -> List(b) {
  accumulate_tc(over: list, with: fun, accumulator: [])
}

fn accumulate_tc(
  over list: List(a),
  with fun: fn(a) -> b,
  accumulator acc: List(b),
) -> List(b) {
  case list {
    [] -> list.reverse(acc)
    [x, ..xs] -> accumulate_tc([fun(x), ..acc], over: xs, with: fun)
  }
}
