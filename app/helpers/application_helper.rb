module ApplicationHelper
  def resource_name
    :enduser
  end

  def resource
    @resource ||= Enduser.new
  end

  def get_price(c)
  	total = 0
  	c.each do |price|
  		subtotal = price.product.price * price.product_count
  		total += subtotal
 	end
 	return total
 end

  def get_price_tax(c)
    total = 0
    tax = 1.08
    carriage = 500
    c.each do |price|
      subtotal = price.product.price * price.product_count
      total += subtotal

    end
  total_tax = (total + carriage)* tax
  return total_tax.floor



  end
end
