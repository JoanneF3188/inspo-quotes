# require 'net/http'
# require 'json'
# require 'pp'
 
# url = 'http://api.forismatic.com/api/1.0/'
# uri = URI(url)
# response = Net::HTTP.get(uri)
# JSON.parse(response)

# http://api.forismatic.com/api/1.0/

require "net/http"
require "uri"

uri = URI.parse("http://api.forismatic.com/api/1.0/")

response = Net::HTTP.post_form(uri, {"method" => "getQuote", "key" => "457653", "format" => "json", "lang" => "en"})

puts response.body