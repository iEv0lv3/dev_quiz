class Question < ActiveRecord::Base
  validates_presence_of :answer, presence: true
  validates_presence_of :question, presence: true
end
