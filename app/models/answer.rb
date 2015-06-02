class Answer < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :body, presence: true
  validates_presence_of :username, presence: true
end
