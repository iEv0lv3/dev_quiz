class AddTableUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.text   :body, null: false
      t.string :username, null: false

      t.timestamps
    end
  end
end
