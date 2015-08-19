class AnswersController < ApplicationController
  # before_action :authenticate_user!, except: [:show]

  def index
    @answers = Answer.all
  end

  #new answers
  def new
      @answer = Answer.find(params[:answer_id])
      @answer = Answer.new
    end

    #create
    def create
      @answer = Answer.find(params[:answer_id])
      @answer = Answer.create!(answer_params.merge(question: @question))
      redirect_to question_answer_path(@question, @answer)
    end

    #show--the random answer.
    # mms: this action is probably better used to show a possible answer from your table of answers.
    # mms:  Where should we be associating a randomly selected answer with the question that was just asked?
    # mms:     Or, put another way, when the user types in a Question and hits "Create Question"  what happens next?  Where in that process should we get a random answer and associate it with the newly created Question?
    def show
      @answer = Answer.all.sample
    end


    #edit
    def edit
      @answer = Answer.find(params[:id])
    end

    #update
    # mms: similarly, this should be used to update an existing, possible answer.  Rather than updating an answer to assign it to a question. 
    # mms:   This looks like you were expecting an answer to be associated with one, and only one, question.
    def update
      @answer = Answer.find(params[:id])
      @question = Question.find(params[:question_id])
      @answer.update(answer_params.merge(question: @question))
      redirect_to question_answer_path(@answer.question, @answer)
    end

    #destroy
    def destroy
      @answer = answer.find(params[:id])
      @answer.destroy
      redirect_to answers_path
    end

    private
    def answer_params
      params.require(:answer).permit(:content)
    end

end
