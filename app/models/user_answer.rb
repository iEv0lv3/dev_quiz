class UserAnswer < ActiveRecord::Base
  belongs_to :logic_questions

  validates_presence_of :body, :username
end
