def get_sizes()
    {"Small" => 8.00, "Medium" => 10.00, "Large" => 12.00}
end

def get_meats()
    ["Pepperoni", "Ham", "Bacon", "Chicken"]
end

def get_veggies()
    ["Peppers", "Onions", "Olives", "Pineapple"]
end

def get_pizza_price(size, meats, veggies, extra_cheese)
    unless get_sizes().has_key?(size); return 0; end

    price = get_sizes()[size]
    meats.each do |v|
        price += 0.75
    end

    veggies.each do |v|
        price += 0.50
    end
    price
end