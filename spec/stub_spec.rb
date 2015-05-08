class Product
    attr_reader :price
end

class PriceCalculator
    def add product
        products << product
    end
    def products
        @products ||= []
    end
    def final_price
        @products.map(&:price).inject(&:+)
    end
end

describe "Stubs" do
    
    it "provides stubs to stinulate state" do
        calculator = PriceCalculator.new
        
        product_stub = instance_double("Product")
        #allow(first_product).to receive(:price).and_return(1.0,100.25)
        allow(product_stub).to receive(:price).and_return(1.0, 100.25)
        # jedino sto mora, to je da primalac bude definisan, tj `price` metod
        
        #calculator.add first_product # => 1.0
        #calculator.add first_product # => 100.25
        calculator.add product_stub
        calculator.add product_stub
        #2.times {calculator.add product_stub }
        
        #calculator.add instance_double("Product", price: 100.25)
        
        expect(calculator.final_price).to eq 101.25
    end
end