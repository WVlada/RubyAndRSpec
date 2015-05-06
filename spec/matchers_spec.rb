# 10 najcesce koriscenih rspec-ova
describe "Matchers" do #ovako pasujemo samo string u blok. Kod Boostrapa smo ubacivali klasu

    it "assets on equality" do
        number = 3
        expect(number).to eq 3 #deprecated je> number.should == 3, i ne moze operator matcher nego mora eq
    end
    
    it "asserts on mathematical operators" do
        number = 5
        expect(number).to be >= 2
    end
    
    it "asserts on matching a regular expression" do
        email = "vlada@gmail.com"
        regular_expression = /^\w+@\w+\.[a-z]{2,4}/ # ^(carrot) je bitan
        expect(email).to match regular_expression
    end
    
    it "asserts on types and classes" do
    object = 2.3 # Float
    #expect(object).to be_a Numeric # proverava ceo inheritance chain
    #mozemo koristiti be_an za klase koje pocinju sa samoglasnicima
    
    expect(object).to be_an_instance_of Float
    end
    
    it "asserts on truthiness"
    it "expects errors"
    it "expects throws"
    it "asserts on predicates"
    it "asserts on collections"
    it "negates asserts"
end