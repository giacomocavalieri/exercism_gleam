import glacier/should
import leap

pub fn is_leap_year_test() {
  leap.is_leap_year(1997)
  |> should.equal(False)

  leap.is_leap_year(1996)
  |> should.equal(True)

  leap.is_leap_year(1900)
  |> should.equal(False)

  leap.is_leap_year(2000)
  |> should.equal(True)
}
