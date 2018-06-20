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

    def test_meats_is_array
        assert_equal(Array, get_meats().class)
    end

    def test_meats_has_data
        assert_equal("Pepperoni", get_meats()[0])
    end

    def test_veggies_is_array
        assert_equal(Array, get_veggies().class)
    end

    def test_veggies_has_data
        assert_equal("Peppers", get_veggies()[0])
    end

    def test_empty_pizza_costs_0
        assert_equal(0, get_pizza_price('', [], [], false))
    end

    def test_small_empty_pizza_is_8_00
        assert_equal(8.00, get_pizza_price('Small', [], [], false))
    end
    
    def test_small_pepperoni_pizza_is_8_75
        assert_equal(8.75, get_pizza_price('Small', [0], [], false))
    end

    def test_large_2_veggie_pizza_is_13_00
        assert_equal(13.00, get_pizza_price('Large', [], [0, 1], false))
    end
end