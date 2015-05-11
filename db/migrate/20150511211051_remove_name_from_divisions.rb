class RemoveNameFromDivisions < ActiveRecord::Migration
  def change
    remove_column(:divisions, :name, :string)
  end
end
