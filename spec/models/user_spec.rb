require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates user' do
    user = User.new(username: 'user_one', password: '123444')
    expect(user.valid?).to be true
  end

  it "if username doesn't exist, doesn't validate user" do
    user = User.new(password: '123456')
    expect(user.valid?).to be false
  end

  it "if length of name is < 3, doesn't validate user" do
    user = User.new(username: 'aa', password: '123444')
    expect(user.valid?).to be false
  end

  it "doesn't validate user if length of name is > 16" do
    user = User.new(username: 'a' * 17, password: '123444')
    expect(user.valid?).to be false
  end

  it "doesn't validate user if password doesn't exist" do
    user = User.new(username: 'test_user')
    expect(user.valid?).to be false
  end

  it "doesn't validates user if password length is less than 4" do
    user = User.new(username: 'test_user', password: '123')
    expect(user.valid?).to be false
  end

  it 'validates user if password length is greater than or equal to 6' do
    user = User.new(username: 'user_one', password: '1234444')
    expect(user.valid?).to be true
  end

  it "doesn't validate user if name already exists" do
    User.create!(username: 'user_one', password: '123444')
    user = User.new(username: 'user_one', password: '123444')
    expect(user.valid?).to be false
  end
end
