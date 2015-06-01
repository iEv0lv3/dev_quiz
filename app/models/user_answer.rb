class UserAnswer < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :body
  validates_presence_of :username
end
