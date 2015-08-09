class Question < ActiveRecord::Base
  belongs_to  :user, dependent: :destroy

  #add association to answer
    # ex. has_many :answers
end
