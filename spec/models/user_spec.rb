require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "is valid with a first name, last name, email and password" do
    user = User.new(
      first_name: "Geo",
      last_name: "Fra",
      email: "test@test.com",
      password: "123456",
      )
    expect(user).to be_valid
  end

  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

  it "returns a user's full name as a string" do
    user = FactoryBot.build(:user, first_name: "Geo" , last_name: "Fra")
    expect(user.name).to eq "Geo Fra"
  end
end
