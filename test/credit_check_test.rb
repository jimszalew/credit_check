gem 'minitest' , '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_can_it_read_a_card_number
    card = CreditCheck.new("123456789")

    assert_equal "123456789", card.number
  end

  def test_it_can_start_at_the_last_digit
    card = CreditCheck.new("123456789")

    assert_equal "987654321", card.reverse
  end

  def test_it_can_read_each_digit
    card = CreditCheck.new("123456789")

    assert_equal ["9","8","7","6","5","4","3","2","1"], card.split
  end

  def test_it_can_read_every_other_digit
    card = CreditCheck.new("123456789")

    assert_equal ["9","7","5","3","1"], card.evens
    assert_equal ["8","6","4","2"], card.odds
  end
end
