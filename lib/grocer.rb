def find_item_by_name_in_collection(name, collection)
  collection.each do |key|
    if key[:item] == name
      return key
    end
  end
  return nil
end

def consolidate_cart(cart)
  counter = 0
  new_cart = []
  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item
      new_cart_item[:count] +=1
    else
      new_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_cart << new_cart_item
    end
  end
  new_cart
end


  