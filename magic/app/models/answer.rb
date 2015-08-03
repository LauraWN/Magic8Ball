class Answer < ActiveRecord::base
  belongs_to  :question, dependent: :destroy
end
