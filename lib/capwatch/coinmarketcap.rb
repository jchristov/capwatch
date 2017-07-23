require 'json'
require 'open-uri'

module Capwatch
  class CoinMarketCap
    URL = 'http://api.coinmarketcap.com/v1/ticker/'.freeze
    def self.fetch
      response = open(URL).read
      JSON.parse response
    end
  end
end