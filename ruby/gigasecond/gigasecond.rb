# Write your code for the 'Gigasecond' exercise in this file. Make the tests in
# `gigasecond_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/gigasecond` directory.

class Gigasecond
  def self.from(birthday)
    birthday + 10**9
  end
end