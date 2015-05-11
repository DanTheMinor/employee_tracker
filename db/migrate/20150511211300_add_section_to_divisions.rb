class AddSectionToDivisions < ActiveRecord::Migration
  def change
    add_column(:divisions, :section, :string)
  end
end
