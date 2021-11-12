require './lib/fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it 'returns "buzz" when passed 5' do
      expect(fizzbuzz(5)).to eq 'buzz'
  end

  it 'returns "fizzBuzz" when passed 5' do
    expect(fizzbuzz(15)).to eq 'fizzBuzz'
  end

  it 'returns "fizz" when passed a multiple of 3' do
    multiples_of_three = (1..100).to_a.select {|num| num % 3 == 0 && num % 5 != 0}
    multiples_of_three.each do |num|
      expect(fizzbuzz(num)).to eq 'fizz'
    end
  end

  it 'returns "buzz" when passed a multiple of 5' do
    multiples_of_five = (1..100).to_a.select {|num| num % 3 != 0 && num % 5 == 0}
    multiples_of_five.each do |num|
      expect(fizzbuzz(num)).to eq 'buzz'
    end
  end

  it 'returns "fizzBuzz" when passed a multiple of 15' do
    multiples_of_fifteen = (1..100).to_a.select {|num| num % 3 == 0 && num % 5 == 0}
    multiples_of_fifteen.each do |num|
      expect(fizzbuzz(num)).to eq 'fizzBuzz'
    end
  end

  it 'returns the number when passed any other number' do
    neither_multiple = (1..100).to_a.select {|num| num % 3 != 0 && num % 5 != 0}
    neither_multiple.each do |num|
      expect(fizzbuzz(num)).to eq num
    end
  end
end