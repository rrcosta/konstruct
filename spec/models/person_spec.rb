require 'rails_helper'

RSpec.describe Person, type: :model do

  describe 'associations' do
   it { should have_many(:addresses) }
  end

  describe 'accepts_nested_attributes_for' do
    it { should accept_nested_attributes_for(:addresses).limit(2) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }

    describe 'document field' do
      context 'valid' do
        it 'with valid content' do
          person = FactoryBot.build(:person, document: FFaker::IdentificationBR.cpf )

          expect(person.valid?).to be_truthy
        end
      end

      context 'invalid' do
        it 'document nil' do
          person = FactoryBot.build(:person, document: nil)

          expect(person.valid?).to be_falsey
        end

        it 'format invalid' do
          person = FactoryBot.build(:person, document: 'ABC')

          expect(person.valid?).to be_falsey
        end

        it 'blank content' do
          person = FactoryBot.build(:person, document: '')

          expect(person.valid?).to be_falsey
        end
      end
    end

  end
end
