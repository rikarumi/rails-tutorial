# spec/models/idea_spec.rb

require 'rails_helper'

RSpec.describe Idea do  
    describe "Validations" do
        let(:user) { User.create(
            name: "Name",
            email: "email@email.com"
        )}
        let(:subject) { Idea.new(
            name: "Name",
            description: "Description",
            picture: "Picture",
            user_id: user.id
        ) }
    
        it "is valid with valid attributes" do
            expect(subject).to be_valid
        end    

        it "is not valid without a name" do
            subject.name = nil
            expect(subject).to_not be_valid
        end

        it "is not valid without a description" do
                subject.description = nil
                expect(subject).to_not be_valid
            end

        it "is not valid without a picture" do
                subject.picture = nil
                expect(subject).to be_valid
            end

        it "is not valid without a status" do
            subject.status = nil
            expect(subject).to be_valid
        end
    end

    describe "Associations" do
        it { should belong_to(:user) }
    end

end