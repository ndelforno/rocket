require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test


  # Write your tests here!

  def test_lyft_off_return_false_when_flying
    #arrange
    @rocket = Rocket.new(flying: true)
    #act
    actual = @rocket.lift_off
    expected = false
    #assert
    assert_equal(expected,actual)
  end

  def test_lyft_off_return_true_if_notflying
    #arrange
    @rocket = Rocket.new
    #act
    actual = @rocket.lift_off
    expected = true
    #assert
    assert_equal(expected,actual)
  end

  def test_lyft_off_change_flying_when_notflying
    #arrange
    @rocket = Rocket.new(flying: false)
    #act
    @rocket.lift_off
    actual = @rocket.flying?
    expected = true
    #assert
    assert_equal(expected,actual)
  end

  def test_land_return_true_when_flying
    #arrange
    @rocket = Rocket.new(flying: true)
    #act
    actual = @rocket.land
    expected = true
    #assert
    assert_equal(expected,actual)
  end


  def test_land_return_false_when_notflying
    #arrange
    @rocket = Rocket.new(flying: false)
    #act
    actual = @rocket.land
    expected = false
    #assert
    assert_equal(expected,actual)
  end

  def test_land_change_flying_when_flying
    #arrange
    @rocket = Rocket.new(flying: true)
    #act
    @rocket.land
    actual = @rocket.flying?
    expected = false
    #assert
    assert_equal(expected,actual)
  end

  def test_status_return_when_flying
    #arrange
    @rocket = Rocket.new(flying: true)
    #act
    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is flying through the sky!"
    #assert
    assert_equal(expected,actual)
  end

  def test_status_return_when_notflying
    #arrange
    @rocket = Rocket.new(flying: false)
    #act
    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"
    #assert
    assert_equal(expected,actual)
  end

  def test_name_updates_from_old_name
    @rocket =Rocket.new
    old_name = @rocket.name
    @rocket.name = "bob"
    new_name = "Bob"

    refute_equal(new_name, old_name)
  end

  def test_colour_updates_from_old_colour
    @rocket =Rocket.new
    old_colour = @rocket.colour
    @rocket.colour = "black"
    new_colour = "black"

    refute_equal(new_colour, old_colour)
  end
end
