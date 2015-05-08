require "environment"
require "rack_app"

fdescribe App do
    include Rack::Test::Methods
    # ovaj include radimo ovde da bismo izolovali unit testove od integration testove. tj, include radimo na nivou describe-a
    # mogli smo samo u spec_helper.rb da stavimo: config.include Rack::Test:Methods ali tada SVAKI test ima dostupne te metode
    # ovo inace sve radimo zbog 'post' metoda
    
    let(:app) {App} # moramo reci racku koju aplikaciju da gadja
    
    # def app
    #    App
    # end
    # a moze i ovako
    
    it "creates a book" do
    
        post :books, book: {name: "MyFirstBook"}
        
        expect(last_response.status).to eq 201 # 201 je 'created' status code 
    # prvi put smo dobili code :404, to resavamo definisanjem posta u Appu
    end
end