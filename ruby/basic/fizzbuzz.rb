class FizzBuzz
  def say(n)
    return 'FizzBuzz' if fizzbuzz? n
    return 'Fizz' if fizz? n
    return 'Buzz' if buzz? n
    n
  end

  private
  def fizzbuzz?(n)
    fizz?(n) && buzz?(n)
  end

  def buzz?(n)
    n % 5 == 0
  end

  def fizz?(n)
    n % 3 == 0
  end
end
