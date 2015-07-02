class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :title, :string
      t.column :detail, :string
      t.column :url, :string

      t.timestamps
    end
  end
end
