import gleam/option.{None, Some}
import two_fer.{two_fer}
import glacier/should

pub fn two_fer_test() {
  two_fer(None)
  |> should.equal("One for you, one for me.")

  two_fer(Some("Alice"))
  |> should.equal("One for Alice, one for me.")

  two_fer(Some("Bob"))
  |> should.equal("One for Bob, one for me.")
}
