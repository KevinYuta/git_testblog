class AddColumnToText < ActiveRecord::Migration[5.2]
  def change
    add_colum :posts, :user_id, :string
  end
end
