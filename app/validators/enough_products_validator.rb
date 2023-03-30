class EnoughProductsValidator < ActiveModel::Validator
  def validate(record)
    record.placements.each do |placement|
      product = placement.product
      if placement.quantity > product.quantity
        record.errors[product.title.to_s] << "Not enough products in stock (#{product.quantity} left)"
      end
    end    
  end
end
