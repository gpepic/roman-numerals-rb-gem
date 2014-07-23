def roman_numerals(input)
  symbols = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
  ]

  number_output = 0
  symbol_output =[]
  if input.instance_of?(String)
    until input.length == 0
      symbols.each do |value, symbol|
        if input.slice(0, 2) == symbol
          number_output = number_output + value
          input.slice!(0, 2)
        elsif input.slice(0) == symbol
          number_output = number_output + value
          input.slice!(0)
        end
      end
    end
    return number_output
  else
    symbols.each do |value, symbol|
      until input < value
        symbol_output.push(symbol)
        input = input - value
      end
    end
    return symbol_output.join()
  end

end
