import glacier/should
import gleam/set
import anagram

pub fn find_anagram_test() {
  let candidates = ["stone", "tones", "banana", "tons", "notes", "Seton"]
  let expected = set.from_list(["tones", "notes", "Seton"])

  "stone"
  |> anagram.find_anagrams(among: candidates)
  |> set.from_list
  |> should.equal(expected)
}
