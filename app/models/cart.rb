class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quatity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

  def remove_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item 
      current_item.quatity += -1
      if current_item.quatity > 0
        current_item.save
      else 
        current_item.destroy
        current_item = nil
      end
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
