require "blog"
require "post"

describe Blog do
    
    context "with no posts" do
        let(:blog) { Blog.new }
        
            it "has no posts" do
                expect(Blog.new).to be_empty
            end
    end
    
    context "with one post" do # u kontekstu refaktorujemo
        let(:blog) { Blog.new(posts: [Post.new]) } # ovo je lazy varijabla
        # ona se svaki put inicijalizuje, znaci da ako je u jednom testu promenimo
        # to se ne odnosi na drugi test
        
            it "has a post when initialized with one" do
                expect(blog).not_to be_empty
            end
            
            it "counts the number of posts" do
                 expect(blog.posts_count).to eq 1
            end
    end    
end