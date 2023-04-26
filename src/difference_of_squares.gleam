import gleam/iterator
import gleam/int

fn square(x) {
  x * x
}

pub fn square_of_sum(n: Int) -> Int {
  iterator.range(from: 1, to: n)
  |> iterator.fold(from: 0, with: int.add)
  |> square
}

pub fn sum_of_squares(n: Int) -> Int {
  iterator.range(from: 1, to: n)
  |> iterator.map(square)
  |> iterator.fold(from: 0, with: int.add)
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
