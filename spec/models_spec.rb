require "book"
fdescribe Book do
    it "fails to create an empty book" do
        book = build(:book)
        expect(book.save).to be_falsy
    end
    
end