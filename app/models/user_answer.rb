class UserAnswer < ActiveRecord::Base
  belongs_to :logic_questions

  validates_presence_of :body
  validates_presence_of :username
end
