# Write your code for the 'Acronym' exercise in this file. Make the tests in
# `acronym_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/acronym` directory.

class Acronym
  # With map
  # def self.abbreviate(text)
  #   text.gsub('-', ' ').split(' ').map { |word| word[0] }.join.upcase
  # end

  # With regex
  # def self.abbreviate(text)
  #   text.gsub(/\w+/) { |word| word[0] }.gsub(/(\W)/, '').upcase
  # end

  # With regex 2.0
  def self.abbreviate(text)
    text.scan(/\b\w/).join.upcase
  end
end
