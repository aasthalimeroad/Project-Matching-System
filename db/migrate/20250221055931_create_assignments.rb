class CreateAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project_role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
