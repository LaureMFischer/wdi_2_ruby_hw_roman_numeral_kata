def to_roman(number)
  conversion_chart = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  answer = ''
  conversion_chart.keys.each do |divisor|
    array = number.divmod(divisor)
    answer << conversion_chart[divisor] * array[0]
    number = array[1]
  end
  answer
end

