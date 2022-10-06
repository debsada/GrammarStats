require "grammar_stats"

RSpec.describe "GrammarStats method" do
    it "fails if text does not start with a capital letter" do 
        grammar = GrammarStats.new
        expect{grammar.check("!ello my name is Deborah Nwankwo")}.to raise_error "First word is not a letter!"
    end 

    # it "returns true if text starts with a capital" do 
    #     grammar = GrammarStats.new
    #     results = grammar.check("Hello my name is Deborah Nwankwo")
    #     expect(results).to eq true
    # end 

    it "returns false if text does not start with a capital" do 
        grammar = GrammarStats.new
        results = grammar.check("hello my name is Deborah Nwankwo")
        expect(results).to eq false
    end 

    it "returns true if text starts with capital and ends ends with an exclamation mark" do 
        grammar = GrammarStats.new
        results = grammar.check("Hello my name is Deborah Nwankwo!")
        expect(results).to eq true
    end 

    it "returns false if text does not start with capital" do 
        grammar = GrammarStats.new
        results = grammar.check("hello my name is Deborah Nwankwo!")
        expect(results).to eq false
    end 

    it "returns false if text does not end with an exclamation mark" do 
        grammar = GrammarStats.new
        results = grammar.check("Hello my name is Deborah Nwankwo")
        expect(results).to eq false
    end 

    it "returns false if text does not start with capital and/or end with an exclamation amrk" do 
        grammar = GrammarStats.new
        results = grammar.check("hello my name is Deborah Nwankwo")
        expect(results).to eq false
    end 

    it "returns 100 when correct string inputed" do 
        grammar = GrammarStats.new
        grammar.check("Hello my name is Deborah Nwankwo!")
        results = grammar.percentage_good
        expect(results).to eq 100
    end 

    it "returns 60 when 3/5 strings are in correct format" do 
        grammar = GrammarStats.new
        grammar.check("Hello my name is Deborah Nwankwo!")
        grammar.check("Hello my name is Deborah Nwankwo!")
        grammar.check("Hello my name is Deborah Nwankwo!")
        grammar.check("hello my name is Deborah Nwankwo")
        grammar.check("hello my name is Deborah Nwankwo")
        results = grammar.percentage_good
        expect(results).to eq 60
    end 







end