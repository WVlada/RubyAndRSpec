class Product2
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
    let(:calculator) {PriceCalculator.new}
    
    it "provides stubs to stinulate state" do
        #calculator = PriceCalculator.new
        
        product_stub = instance_double("Product2")
        #allow(first_product).to receive(:price).and_return(1.0,100.25)
        allow(product_stub).to receive(:price).and_return(1.0, 100.25)
        # jedino sto mora, to je da primalac bude definisan, tj `price` metod
        
        #calculator.add first_product # => 1.0
        #calculator.add first_product # => 100.25
        calculator.add product_stub
        calculator.add product_stub
        #2.times {calculator.add product_stub }
        
        #calculator.add instance_double("Product2", price: 100.25)
        
        expect(calculator.final_price).to eq 101.25
    end
    
    it "provides mocks to assert on message passing" do
        product_mock = double(:product2)
        #expect(product_mock).to receive(:price)
        #expect(product_mock).to receive(:price).with(2,4,5)
        expect(product_mock).to receive(:price).with(any_args) # ili no_args
        
        calculator.add product_mock
        calculator.final_price # sa ovim metodom prolazi, jer on poziva :price metod gore je definisan
    end
    
    it "provides mocks to assert on message passing 2" do
        #expect_any_instance_of(Product2).to receive(:price) { 5 } # i da vrati 5
        allow_any_instance_of(Product2).to receive(:price) { 5 } # i da vrati 5
        
        product = Product2.new
        puts product.price
    end
end