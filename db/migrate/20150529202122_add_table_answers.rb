class AddTableAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text   :body, null: false
      t.string :username, null: false

      t.timestamps
    end
  end
end
