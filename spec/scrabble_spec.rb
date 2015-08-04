require('rspec')
require('scrabble')


describe ("String#scrabble") do
  it("returns a scrabble score for a letter") do
  expect("a".scrabble()).to(eq(1))
  end

  it("returns an array that contains the score for each letter of a word") do
    expect(("car").scrabble()).to(eq(5))
  end

  it("accounts for uppercase and lowercase letters") do
    expect(("CaRRy").scrabble()).to(eq(10))
  end

  it("returns the total score for a word") do
    expect(("dog").scrabble()).to(eq(5))
  end
end
