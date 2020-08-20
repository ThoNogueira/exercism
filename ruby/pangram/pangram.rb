# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

class Pangram
  ALPHABET = (97..122).map { |ascii_code| ascii_code.chr }
  def self.pangram?(sentence)
    result = ALPHABET - sentence.downcase.chars.uniq
    result.empty?
  end
end
