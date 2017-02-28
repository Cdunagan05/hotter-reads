class Api::V1::ReadsController < ApplicationController
  def index
    @reads = Read.where(updated_at: (Time.now - 24.hours)..Time.now).limit(10).order('count DESC')
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: @reads, status: 200
  end
end
