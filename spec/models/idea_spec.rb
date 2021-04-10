# spec/models/idea_spec.rb

require 'rails_helper'

RSpec.describe Idea, :type => :model do
    subject { Idea.new }

    it "is valid with valid attributes" do
        subject.name = "Name"
        subject.description = "Description"
        subject.picture = "Picture"
        subject.user_id = 1234
        expect(subject).to be_valid
      end    

    it "is not valid without a name" do
        idea = Idea.new(name: nil)
        expect(idea).to_not be_valid
    end

  it "is not valid without a description" do
        idea = Idea.new(description: nil)
        expect(idea).to_not be_valid
    end

  it "is not valid without a picture" do
        idea = Idea.new(picture: nil)
        expect(idea).to_not be_valid
    end

    it "is not valid without a status" do
        idea = Idea.new(status: nil)
        expect(idea).to_not be_valid
    end

end