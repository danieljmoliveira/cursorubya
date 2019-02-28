require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to allow_value("costa@nonato.com").for(:email) }
  it { is_expected.to validate_uniqueness_of(:auth_token) }

  describe '#info' do
    it 'returns email and created_at and token' do
      user.save!
      allow(Devise).to receive(:friendly_token).and_return("abc123dtrTOKEN")
      expect(user.info).to eq("#{user.email} - #{user.created_at} - Token: abc123dtrTOKEN")
    end
  end

  #pending "add some examples to (or delete) #{__FILE__}"
end