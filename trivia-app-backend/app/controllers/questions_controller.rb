class QuestionsController < ApplicationController


  def index 
    @questions = Question.all 
    render json: (@questions)
  end 

  def show 
    @question = Question.find_by(params[:id])
  end 

  def create
  end


end
