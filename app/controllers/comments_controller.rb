class CommentsController < ApplicationController
  def create
    render json: params
  end
  def new
  end
  def create_vote
      User.find_by_id(@current_user['id']).votes << Comment.find_by_id(params[:id]).votes.create
      redirect_to(:back)
      #post_comments_path

      #finds the appropriate the comment

      #creates new vote

      #redirects to comment page
      # render json: params[:id]
      # redirect_to "/"


  end

end