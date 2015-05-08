class App < Sinatra::Base
    post "/books"do
        book = Book.new params[:book] #ovime resavamo code 200 
        if book.save
            status 201
        else
            status 1111 #bilo koji broj
        end
    end
    # samo kostur post "/books"do i end - ovime resavamo 404 gresku, ali dobijamo 200
end