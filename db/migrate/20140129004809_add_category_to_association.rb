class AddCategoryToAssociation < ActiveRecord::Migration
  def change
    add_reference :associations, :category, index: true
  end
end
