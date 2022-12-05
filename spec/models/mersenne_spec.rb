require 'rails_helper'
require 'faker'

RSpec.describe Mersenne, type: :model do
  include Faker

  describe 'validations' do
    it { should validate_presence_of(:number).with_message('не может быть пустым') }

    context 'when numb is not a digit' do
      it { should_not allow_value(Faker::Lorem.word).for(:number) }
    end

    context 'when num is a digit' do
      it { should allow_value(Faker::Number.number).for(:number) }
    end
  end


end
