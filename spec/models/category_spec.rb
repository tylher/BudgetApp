require 'rails_helper'

RSpec.describe Category, type: :model do
   subject { Category.new(author: User.new(name: 'taiwo',email:'test@test.com', password:"password"),name:'category')}
   before {subject.save}

   context 'validation test' do
    it "name should be present" do
        subject.name = nil
        expect(subject).to_not be_valid
    end
    
   end
end