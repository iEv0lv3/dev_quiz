class AddRubyBooleanLogicQuestions < ActiveRecord::Migration
  def change
    create_table :logic_questions do |t|
      t.string  :question, null: false
      t.boolean :answer, :default => true, null: false

      t.timestamps
    end
  end
end
