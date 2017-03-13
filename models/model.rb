# http://api.forismatic.com/api/1.0/

require "net/http"
require "uri"
require "pp"

uri = URI.parse("http://api.forismatic.com/api/1.0/")

response = Net::HTTP.post_form(uri, {"method" => "getQuote", "key" => "457653", "format" => "json", "lang" => "en"})

hash = response.body

@quote = eval(hash).first[1]

puts @quote

# class Get_quote
    
# end