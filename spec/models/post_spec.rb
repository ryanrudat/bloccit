require 'rails_helper'

RSpec.describe Post, type: :model do
#using `let` method, creates a new instance of the Post class, and name it `post`
#`let` dynamically defines a method (in this case, post), and, upon first call within the
#spec (the it block), computes and stores the return value
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }

#test whether `post` has attributes named  `title` and `body`. This test whether
#`post` will reutrn a non-nil value when `post.title` and `post.body` is called

  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
    end
  end
end
