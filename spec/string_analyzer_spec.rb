class StringAnalyzer
  def has_vowels?(str)
    !!(str =~ /[aeio]+/i)
  end
end

describe StringAnalyzer do
  context "With valid input" do
    it "Should detect when a string contain vowels" do
      s1 = StringAnalyzer.new
      expect(s1.has_vowels?("new year")).to be true
    end
    it "Should detect when a string without vowels" do
      s1 = StringAnalyzer.new
      expect(s1.has_vowels?("nw")).to be false
    end
  end
end
