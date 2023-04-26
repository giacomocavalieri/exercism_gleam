import glacier/should
import gleam/set
import resistor_color.{
  Black, Blue, Brown, Green, Grey, Orange, Red, Violet, White, Yellow,
}

pub fn colors_test() {
  let colors =
    set.from_list([
      Black,
      Brown,
      Red,
      Orange,
      Yellow,
      Green,
      Blue,
      Grey,
      Violet,
      White,
    ])

  set.from_list(resistor_color.colors())
  |> should.equal(colors)
}

pub fn code_test() {
  resistor_color.code(Black)
  |> should.equal(0)
  resistor_color.code(Brown)
  |> should.equal(1)
  resistor_color.code(Red)
  |> should.equal(2)
  resistor_color.code(Orange)
  |> should.equal(3)
  resistor_color.code(Yellow)
  |> should.equal(4)
  resistor_color.code(Green)
  |> should.equal(5)
  resistor_color.code(Blue)
  |> should.equal(6)
  resistor_color.code(Violet)
  |> should.equal(7)
  resistor_color.code(Grey)
  |> should.equal(8)
  resistor_color.code(White)
  |> should.equal(9)
}
