class CreateDegrees < ActiveRecord::Migration[7.0]
  def change
    create_table :degrees do |t|
      t.string :degree

      t.timestamps
    end
  end
end
