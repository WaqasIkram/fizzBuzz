def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
        return 'fizzBuzz'
    elsif (number % 3).zero?
        return 'fizz'
    elsif (number % 5).zero?
        return 'buzz'
    else
        return number
    end
end