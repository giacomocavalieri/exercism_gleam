import gleam/string

pub fn convert(number: Int) -> String {
  let #(thousands, hundreds, tens, units) = four_digits(number)
  string.concat([
    convert_unit(thousands, "M", "", ""),
    convert_unit(hundreds, "C", "D", "M"),
    convert_unit(tens, "X", "L", "C"),
    convert_unit(units, "I", "V", "X"),
  ])
}

fn four_digits(number) {
  let thousands = number / 1000
  let hundreds = number % 1000 / 100
  let tens = number % 1000 % 100 / 10
  let units = number % 1000 % 100 % 10
  #(thousands, hundreds, tens, units)
}

fn convert_unit(unit, lower, middle, higher) {
  case unit {
    0 | 1 | 2 | 3 -> string.repeat(lower, unit)
    4 -> lower <> middle
    5 | 6 | 7 | 8 -> middle <> string.repeat(lower, unit - 5)
    9 -> lower <> higher
    _ -> ""
  }
}
