class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.references :industry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
