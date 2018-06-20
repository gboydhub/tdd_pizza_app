require "minitest/autorun"
require_relative "pizza_app.rb"

class TestPizzaApp < Minitest::Test
    def test_assert_1_equals_1
        assert_equal(1, 1)
    end

    def test_size_is_hash
        assert_equal(Hash, get_sizes().class)
    end

    def test_small_is_8_00
        assert_equal(8.00, get_sizes()['Small'])
    end

    def test_other_sizes
        assert_equal(10.00, get_sizes()['Medium'])
        assert_equal(12.00, get_sizes()['Large'])
    end
end