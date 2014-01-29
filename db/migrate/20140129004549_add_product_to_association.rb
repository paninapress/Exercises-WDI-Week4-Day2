class AddProductToAssociation < ActiveRecord::Migration
  def change
    add_reference :associations, :product, index: true
  end
end
