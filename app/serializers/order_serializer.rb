class OrderSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  has_many :placements
  cache_options enabled: true, cache_length: 12.hours
end
