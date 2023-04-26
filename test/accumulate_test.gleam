import glacier/should
import accumulate.{accumulate}

pub fn accumulate_test() {
  accumulate([1, 2, 3], fn(x) { x * x })
  |> should.equal([1, 4, 9])
}
