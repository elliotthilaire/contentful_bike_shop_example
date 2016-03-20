class Bundle < ContentfulModel::Base
  self.content_type_id = 'bundle'

  has_many :products

  def price_total
    products.map(&:price).reduce(:+)
  end

  def price_savings
    price_total - price
  end
end
