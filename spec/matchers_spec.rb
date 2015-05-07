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
    
    it "asserts on truthiness" do
        bool = true
        falsy_bool = false
        nil_value = nil
        object = Class.new
    
        expect(bool).to be true
        # expect(nil_value).to be_falsey # ovo koristi === operator, on cekira i klasu znaci
        # expect(object).to be_truthy # truthy i falsey, truthy proverava da nije nil ili false
    end
    
    it "expects errors" do
        expect do
            #raise ArgumentError
            raise TypeError
        end.to raise_error TypeError
    end
    
    it "expects throws" do
        expect {
            throw :oops
        }.to throw_symbol :oops
    end
    
    it "asserts on predicates" do
        class A
            def good?
                # true
                A
            end
        end
        expect(A.new).to be_good
        #be_good se interpretira u kontekstu klase A, i cita se od underscorea udesno, dodavajuci ?
        #samo A prolazi, jer se u predicat expectation u stvari poziva be_truthy metod
    end
    
    it "asserts on collections" do
        list = [:one, :two, :three, :four]
    
        expect(list).to include :four
        #expect(list).to start_with :three
    end
    
    it "negates asserts" do
        expect(3).not_to be 5
    end

end