require 'rails_helper'

RSpec.describe User, type: :model do
    subject { User.new(name: 'taiwo',email:'test@test.com', password:"password") }
    before { subject.save }

    context 'validation tests' do
        it 'name should be present' do
            subject.name = nil
            expect(subject).to_not be_valid
        end
   end
end