import gleam/iterator
import gleam/list
import gleam/int
import gleam/float
import gleam/bool.{guard}

pub fn prime(number: Int) -> Result(Int, Nil) {
  use <- guard(when: number <= 0, return: Error(Nil))
  iterator.single(2)
  |> iterator.append(iterator.iterate(3, fn(x) { x + 2 }))
  |> iterator.filter(is_prime)
  |> iterator.drop(number - 1)
  |> iterator.first
}

fn is_prime(number: Int) -> Bool {
  case number {
    1 -> False
    2 -> True
    _ ->
      case int.square_root(number) {
        Error(_) -> False
        Ok(square) ->
          list.range(from: 2, to: float.round(square))
          |> list.all(fn(x) { number % x != 0 })
      }
  }
}
