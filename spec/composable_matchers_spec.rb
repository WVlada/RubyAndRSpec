describe "Composable Matchers" do
    it "works with nested data" do
        class Product
            def initialize id, name, category
                @id = id
                @name = name
                @category  = category
            end
            
            def serial_data
                ["X-",
                @name[0],
                @category[0],
                @id
                ]
            end
        end
        
        product = Product.new 2456, "Tomato", "Fruit"
        
        expect(product.serial_data).to match [
            a_string_starting_with("X-"),
            a_string_starting_with("T"),
            a_string_starting_with("F"),
            a_value < 5000
        ]
        
        # pored matcha postoje i
        # ------------------------
        # change
        # contain_exactly
        # include
        # yield_with_args(a_string, a_hash)
        
        # a postoje i matcher argumenti:
        ## ------------------------
        # a_string, _starting_with, _ending_with
        # a_hash, _including
        # a_value, _within(0.5).of(3.145) 3.14 i 3.15
        # an_instance_of(Product)
        # 
    end
    
    it "compound matchers" do
        string = "Jose"
        expect(string).to start_with("J").and end_with("e")
        #expect(string).to start_with("J").or end_with("e")
        expect(50).to eq(50).or eq(20)
    end
    
end