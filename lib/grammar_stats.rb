class GrammarStats
    def initialize 
        @total_text = 0
        @percentage_checked = 0
    end

    def check(text)
        fail "First word is not a letter!" unless text[0] =~ /[A-Z]/ ||  text[0] =~ /[a-z]/


        if text[0] =~ /[A-Z]/ && text.end_with?("!")
            @total_text += 1
            @percentage_checked+=1
            return true
        else
            @total_text += 1
            return false
        end
            
    end

    def percentage_good
        decimal = @percentage_checked / @total_text.to_f
        return decimal * 100
    end
end

# grammar = GrammarStats.new
# puts grammar.check("Hello my name is Deborah Nwankwo")