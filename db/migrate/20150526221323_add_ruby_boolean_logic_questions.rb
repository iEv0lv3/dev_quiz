class AddRubyBooleanLogicQuestions < ActiveRecord::Migration
  def change
    create_table :logic_questions do |t|
      t.string  :question, null: false
      t.boolean :answer, default: false, null: false

      t.timestamps
    end
  end
end
