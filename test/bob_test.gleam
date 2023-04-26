import glacier/should
import bob

pub fn bob_test() {
  bob.hey("Question?")
  |> should.equal("Sure.")

  bob.hey("YELL")
  |> should.equal("Whoa, chill out!")

  bob.hey("YELLED QUESTION?")
  |> should.equal("Calm down, I know what I'm doing!")

  bob.hey("  \n\t ")
  |> should.equal("Fine. Be that way!")

  bob.hey("Something else")
  |> should.equal("Whatever.")
}
