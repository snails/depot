class CombineItemsInCart < ActiveRecord::Migration
  def up 
    Cart.all.each do |cart|
      sums = cart.line_items.group(:product_id).sum(:quatity)

      sums.each do |product_id, quatity|
        cart.line_items.where(product_id: product_id).delete_all
        item = cart.line_items.build(product_id: product_id)
        item.quatity = quatity
        item.save!
      end
    end
  end

  def down
    LineItem.where("quatity > 1").each do |line_item|
      line_item.quatity.times do 
        LineItem.create(cart_id: line_item.cart_id, product_id: line_item.product_id, quatity: 1)
      end
      line_item.destroy
    end
  end
end
