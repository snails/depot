class Product < ActiveRecord::Base
  before_destroy :ensure_not_referenced_by_any_line_items

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true,
                    length: { minimum: 5 }
  validates :image_url, format: { with: %r{\.(jpg|png|gif)\Z}i, 
                                  message: "Must be a URL for gif, jpg or png image" }


  has_many :line_items
  has_many :orders, through: :line_items



  def self.lastest
    Product.order(:updated_at).last
  end

  private
  def ensure_not_referenced_by_any_line_items
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line items present')
      return false
    end
  end
end
