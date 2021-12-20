require 'rails_helper'

RSpec.describe 'Sprints', type: :request do
  let(:obj) do
    { target: 300, minutes: 50,
      seconds: 10, hours: 1, distance: 12, remarks: '1 mile PB' }
  end
  before(:example) do
    @user = User.create(username: 'test_user', password: '123456')
    token = JWT.encode({ user_id: @user.id }, 'yourSecret')
    @headers = { Authorization: "Bearer #{token}" }
    @sprint = @user.sprints.create(target: 700, minutes: 50,
                                   seconds: 10, hours: 1, distance: 12, remarks: '1 mile PB')
  end

  it 'shows all sprints' do
    get '/api/v1/sprints', headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'creates a sprint' do
    post '/api/v1/sprints',
         params: obj,
         headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it "fetches a sprint's distance" do
    get "/api/v1/sprints/#{@sprint.id}", params: { target: 300 }, headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'shows sprint info' do
    get "/api/v1/sprints/#{@sprint.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end
end
