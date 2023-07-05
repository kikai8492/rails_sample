class CreateBlogs < ActiveRecord::Migration[6.1] #1
  def change #2
    create_table :blogs do |t| #3

      t.timestamps #4
    end
  end
end
