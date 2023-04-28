import glacier/should
import roman_numerals

pub fn convert_test() {
  1990
  |> roman_numerals.convert
  |> should.equal("MCMXC")
}
