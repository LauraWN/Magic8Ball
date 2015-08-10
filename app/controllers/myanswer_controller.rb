class MyAnswerController < ApplicationController
  def index
    @answer = Answer.all.sample
  end
end 
