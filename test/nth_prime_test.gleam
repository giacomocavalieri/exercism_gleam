import glacier/should
import nth_prime.{prime}

pub fn prime_test() {
  prime(0)
  |> should.be_error

  prime(-1)
  |> should.be_error

  prime(1)
  |> should.equal(Ok(2))

  prime(2)
  |> should.equal(Ok(3))

  prime(6)
  |> should.equal(Ok(13))
}
