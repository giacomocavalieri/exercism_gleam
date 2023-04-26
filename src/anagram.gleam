import gleam/list
import gleam/string
import gleam/map.{Map}
import gleam/function.{identity}

pub fn find_anagrams(
  of word: String,
  among candidates: List(String),
) -> List(String) {
  candidates
  |> list.filter(is_anagram(_, of: word))
}

fn is_anagram(word: String, of other: String) -> Bool {
  let graphemes = fn(word) {
    word
    |> string.trim
    |> string.lowercase
    |> string.to_graphemes
    |> count
  }
  let different_words = string.lowercase(word) != string.lowercase(other)
  different_words && graphemes(word) == graphemes(other)
}

fn count(elements: List(a)) -> Map(a, Int) {
  elements
  |> list.group(by: identity)
  |> map.map_values(fn(_, l) { list.length(l) })
}
