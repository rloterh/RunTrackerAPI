class Api::V1::FeedsController < ApplicationController
  def index
    random = Random.new
    limit = Feed.all.length
    @feed = Feed.find(random.rand(1..limit)).message
    render json: @feed, status: :ok
  end
end
