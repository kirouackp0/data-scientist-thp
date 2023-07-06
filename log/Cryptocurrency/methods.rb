require_relative 'data'

currency_prices = CURRENCY_PRICES.map { |price| price.to_f }
crypto_currency_hash = CURRENCY_NAMES.zip(currency_prices)
# crypto_currency_hash = crypto_currency_hash.map { |key, value| [key, value.to_f] }.to_h


def greatest_value_crypto(crypto_hash)
    sorted_hash = crypto_hash.sort_by {|key, value| value}.reverse.to_h
    first_value = sorted_hash.values[0]

    sorted_hash.each do |key, value|
      puts key if value == first_value
    end
end
# greatest_value_crypto(crypto_currency_hash)

def lowest_value_crypto(crypto_hash)
    sorted_hash = crypto_hash.sort_by {|key, value| value}.to_h
    first_value = sorted_hash.values[0]

    sorted_hash.each do |key, value|
      puts key if value == first_value
    end
end
# lowest_value_crypto(crypto_currency_hash)

def crypto_value_less_than_6000(crypto_hash)
  sorted_hash = crypto_hash.sort_by {|key, value| value}.to_h
  lower_than_6000_array = []
    sorted_hash.each do |key, value|
      lower_than_6000_array << [key, value] if value < 6000
      # puts key if value < 6000
    end
    return lower_than_6000_array.to_h
end
# crypto_value_less_than_6000(crypto_currency_hash)

def highest_value_among_crypto_below_6000(crypto_hash)
  lower_than_6000_hash = crypto_value_less_than_6000(crypto_hash)

  puts lower_than_6000_hash.keys[-1]
end

highest_value_among_crypto_below_6000(crypto_currency_hash) 