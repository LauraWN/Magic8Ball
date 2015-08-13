class Question < ActiveRecord::Base
  belongs_to  :user, dependent: :destroy
  # mms: belongs_to :question # each question is associated with (belongs to) one answer.  Each answer is associated with (has) many questions.

  #add association to answer
    # ex. has_many :answers
end
