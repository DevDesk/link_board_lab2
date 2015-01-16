class CommentsController < ApplicationController
  def create
    render json: params
  end
  def new
  end

end