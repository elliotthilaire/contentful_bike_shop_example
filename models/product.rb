class Product < ContentfulModel::Base
   self.content_type_id = 'product'

   belongs_to_many :bundles
end
