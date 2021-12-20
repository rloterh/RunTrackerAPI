require 'rails_helper'

RSpec.describe Sprint, type: :model do
  before(:example) do
    @user = User.create!(username: 'one_user', password: '123456')
  end

  it 'checks correct value to a sprint' do
    sprint = @user.sprints.build(target: 500, hours: 1, minutes: 50, seconds: 20, distance: 12, remarks: 'nice',
                                 effort: 100)
    expect(sprint.minutes).to be 50
  end

  it 'validate sprint' do
    sprint = @user.sprints.build(target: 800, minutes: 30, seconds: 10, hours: 1, distance: 12, remarks: 'remarks',
                                 effort: 100)
    expect(sprint.valid?).to be true
  end

  it 'does not validate sprint if target is not present' do
    sprint = @user.sprints.build(minutes: 30, seconds: 10, hours: 1, distance: 12, remarks: 'remarks', effort: 100)
    expect(sprint.valid?).to be false
  end

  it 'does not validate appropraite sprint if target is invalid' do
    sprint = @user.sprints.build(target: '', minutes: 30, seconds: 10, hours: 1, distance: 12, remarks: 100, effort: 10)
    expect(sprint.valid?).to be false
  end
end
