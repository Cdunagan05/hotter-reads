class ReadsController < ApplicationController
  def create
    @url = Read.find_or_create_by(url: (params[:url]))
    @url.count += 1
    @url.save
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: @url.to_json, status: 200
  end

  def index
    @reads = Read.where(updated_at: (Time.now - 24.hours)..Time.now).limit(10).order('count DESC')
  end
end


# .group(:url).order('count DESC')
