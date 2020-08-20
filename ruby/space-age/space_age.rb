# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.

class SpaceAge
  # Using define_method
  def initialize(age_in_seconds)
    @age_in_days = age_in_seconds / (24 * 60 * 60)
  end

  PLANETS = {
    earth: 365.25,
    mercury: 365.25 * 0.2408467,
    venus: 365.25 * 0.61519726,
    mars: 365.25 * 1.8808158,
    jupiter: 365.25 * 11.862615,
    saturn: 365.25 * 29.447498,
    uranus: 365.25 * 84.016846,
    neptune: 365.25 * 164.79132
  }
  PLANETS.each do |planet, orbital_period|
    define_method("on_#{planet}") do
      @age_in_days / orbital_period
    end
  end

  # Without define_method

  # ONE_YAER_ON_EARTH_IN_SECONDS = 31_557_600.0
  # MERCURY_ORBITAL_PERIOD_EARTH = 0.2408467
  # VENUS_ORBITAL_PERIOD_EARTH = 0.61519726
  # MARS_ORBITAL_PERIOD_EARTH_YEARS = 1.8808158
  # JUPITER_ORBITAL_PERIOD_EARTH_YEARS = 11.862615
  # SATURN_ORBITAL_PERIOD_EARTH_YEARS = 29.447498
  # URANUS_ORBITAL_PERIOD_EARTH_YEARS = 84.016846
  # NEPTUNE_ORBITAL_PERIOD_EARTH_YEARS = 164.79132

  # def initialize(age_in_seconds)
  #   @age_in_seconds = age_in_seconds
  # end

  # def on_earth
  #   @age_in_seconds / ONE_YAER_ON_EARTH_IN_SECONDS
  # end

  # def on_mercury
  #   on_earth / MERCURY_ORBITAL_PERIOD_EARTH
  # end

  # def on_venus
  #   on_earth / VENUS_ORBITAL_PERIOD_EARTH
  # end

  # def on_mars
  #   on_earth / MARS_ORBITAL_PERIOD_EARTH_YEARS
  # end

  # def on_jupiter
  #   on_earth / JUPITER_ORBITAL_PERIOD_EARTH_YEARS
  # end

  # def on_saturn
  #   on_earth / SATURN_ORBITAL_PERIOD_EARTH_YEARS
  # end

  # def on_uranus
  #   on_earth / URANUS_ORBITAL_PERIOD_EARTH_YEARS
  # end

  # def on_neptune
  #   on_earth / NEPTUNE_ORBITAL_PERIOD_EARTH_YEARS
  # end
end
