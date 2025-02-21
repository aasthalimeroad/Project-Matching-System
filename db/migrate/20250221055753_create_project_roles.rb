class CreateProjectRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :project_roles do |t|
      t.references :project, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.string :experience_required

      t.timestamps
    end
  end
end
