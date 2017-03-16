# http://api.forismatic.com/api/1.0/

require "net/http"
require "uri"

class Quote
    attr_reader :quote
    
    def initialize
        uri = URI.parse("http://api.forismatic.com/api/1.0/")
        response = Net::HTTP.post_form(uri, {"method" => "getQuote", "key" => "457653", "format" => "json", "lang" => "en"})
        hash = eval(response.body)
        @quote = hash.first[1]
        puts @quote

    end
    
    def get_quote
        @quote
    end

end
