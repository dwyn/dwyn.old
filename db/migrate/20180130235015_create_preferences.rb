class CreatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.string :project_sort_order
      t.string :post_sort_order
      t.boolean :allow_create_projects
      t.boolean :allow_create_posts

      t.timestamps
    end
  end
end
