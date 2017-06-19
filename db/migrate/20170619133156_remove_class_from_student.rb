class RemoveClassFromStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :class, :integer
  end
end
