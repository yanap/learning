class FizzBuzz
  def say(n)
    return 'Fizz' if fizz? n
    n
  end

  private
  def fizz?(n)
    n % 3 == 0
  end
end
