import gleam/set
import gleam/string

pub fn is_pangram(string: String) -> Bool {
  let alphabet =
    "abcdefghijklmnopqrstuvwxyz"
    |> string.to_graphemes
    |> set.from_list

  set.size(alphabet) == string
  |> string.lowercase
  |> string.to_graphemes
  |> set.take(from: alphabet, keeping: _)
  |> set.size
}
