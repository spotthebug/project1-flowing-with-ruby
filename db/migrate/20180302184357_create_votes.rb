class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.boolean :is_upvote
      t.references :voteable, polymorphic: true, index: true

      t.timestamps
    end

  end
end
