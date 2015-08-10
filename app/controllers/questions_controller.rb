class QuestionsController < ApplicationController
  # before_action :find_question, only: [:show, :edit, :update, :destroy]

#index
  def index
    @questions = Question.all
  end

#new Question
  def new
    @question = Question.new
  end

#show
  def show
    @question = Question.find(params[:id])
  end

  #create
  def create
      @answer = Answer.all.sample
      redirect_to myanswer_path(@answer)
  end

  #show
  def show
    @question = Question.find(params[:id])
  end

  #edit
  def edit
    @question = Question.find(params[:id])
  end

  #update
  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to question_path(@question)
  end

  #destroy
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private

  def find_question
      @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:content)
  end

end
