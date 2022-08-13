require 'rails_helper'

RSpec.describe Category, type: :model do
    subject {Deal.new(author: User.new(name: 'taiwo',email:'test@test.com', password:"password"),name: "deal")}
    before {subject.save}

    context 'Validation tests' do
        it " amount must be presence" do
            expect(subject).to_not be_valid
        end
        it " amount must be greater than 0" do
            subject.amount = 1
            expect(subject).to be_valid
        end
    end
end