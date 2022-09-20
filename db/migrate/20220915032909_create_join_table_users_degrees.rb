class CreateJoinTableUsersDegrees < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :degrees do |t|
      # t.index [:user_id, :degree_id]
      # t.index [:degree_id, :user_id]
    end
  end
end
