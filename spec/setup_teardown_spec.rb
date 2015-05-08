require "blog"

describe "Callbacks" do
    
    let(:blog) { Blog.new }
    
    #before(:each) do
    before(:example) do |example|
    #before(:context) do
        blog.populate!
        #puts example.inspect
    end
    
    it "is has one post" do
        expect(blog.posts_count).to eq 1
    end
    
    # dokaz da se reinitialituje
    it "is has one post" do
        expect(blog.posts_count).to eq 1
    end
    
end