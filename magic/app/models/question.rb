class Question < ActiveRecord::base
  belongs_to  :user, dependent: :destroy
end
