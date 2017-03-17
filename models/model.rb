# http://api.forismatic.com/api/1.0/

require "net/http"
require "uri"

class Quote
    attr_reader :quote, :feeling, :new_quote

    def initialize(*feeling)
        uri = URI.parse("http://api.forismatic.com/api/1.0/")
        response = Net::HTTP.post_form(uri, {"method" => "getQuote", "key" => "457653", "format" => "json", "lang" => "en"})
        hash = eval(response.body) # turns the API info into a hash; Needed to get quotes from body of the file
        @quote = hash.first[1] # Goes into the hash and grabs the first key-value pair and grabs the value
        # @author = hash[:quoteAuthor]
        @feeling = feeling
    end

    # def match_quote
    #     words = @quote.split #split quote
    #     words.each do |word| #go through each word
    #         begin 
    #         @new_quote = Quote.new #constantly grab new quote
    #         end until word == @feeling #until a word is equal to the selected feeling,
    #     end
    #     @new_quote.join #join quote words.
        
    # end
    
    def get_quote
        @quote #return the quote
    end

end


