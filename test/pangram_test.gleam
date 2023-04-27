import glacier/should
import pangram

pub fn is_pangram_test() {
  "The quick brown fox jumps over the lazy dog."
  |> pangram.is_pangram
  |> should.equal(True)

  "Not a pangram"
  |> pangram.is_pangram
  |> should.equal(False)
}
