class AddRubyQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :question, null: false
      t.string :answer, null: false

      t.timestamps
    end
  end
end
