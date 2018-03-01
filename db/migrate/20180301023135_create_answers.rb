class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :description
      t.references :user
      t.references :question

      t.timestamps
    end
  end
end
