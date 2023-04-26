import difference_of_squares.{difference}
import glacier/should

pub fn difference_test() {
  difference(10)
  |> should.equal(2640)
}
