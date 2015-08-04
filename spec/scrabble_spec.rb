require('rspec')
require('scrabble')


describe ("String#scrabble") do
  it("returns a scrabble score for a letter") do
  expect("a".scrabble()).to(eq([1]))
  end

  it("returns an array that contains the score for each letter of a word") do
    expect(("car").scrabble()).to(eq([3, 1, 1]))
  end

  it("accounts for uppercase and lowercase letters") do
    expect(("CaRRy").scrabble()).to(eq([3, 1, 1, 1, 4]))
  end
end
