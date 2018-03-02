class AddColumntoVotes < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :user_id, :integer, references: :users
  end
end
