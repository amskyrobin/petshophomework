def pet_shop_name(shop)
 name = shop[:name]
 return name
end

def total_cash(shop)
  cash = shop[:admin][:total_cash]
  return cash
end

def add_or_remove_cash (shop, amount)
  shop[:admin][:total_cash] += amount

end

def pets_sold(shop)
  sold = shop[:admin][:pets_sold]
  return sold
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount   # += will add the next amount and change the starting value
end

def stock_count(shop)
  shop[:pets].count
end

def pets_by_breed(shop, breed)
  result = []
  for dog in shop[:pets] do
    if dog[:breed] == breed 
      result << (dog)
    end
  end
  return result 
end

# def pets_by_breed__not_found(shop, breed) YOU DONT NEED ELSE AS IT COUNTS THE ARRAY ANYWAYS 
#   result = []
#   for dog in shop[:pets] do
#     if dog[:breed] == breed 
#       result << (dog)
#     else return result = "0"
#     end
#   end
#   return result 
# end

def find_pet_by_name(shop, name)
  for pet_name in shop[:pets] do 
    if pet_name[:name] == name 
      return pet_name
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
  for pet_name in shop[:pets] do 
    if pet_name[:name] == name 
      shop[:pets].delete(pet_name)
    end
  end
end
              
def add_pet_to_stock (shop, new_pet)
pet_array = shop[:pets]                        #AKA
pet_array << new_pet                          #shop[:pets] << new_pet
return pet_array.count                        #return stock_count(shop)
end


def customer_pet_count(customers)           
  customer = customers[:pets].count()
end

def add_pet_to_customer(customers, new_pet)     #AKA
  customer = customers[:pets]                    #customers[:pets] << new_pet
  customer << new_pet                            #return customer_pet_count(customers)
  return customer.count()
end


def add_pet_to_stock ( shopname, newpet )
 shopname[:pets] << newpet
     return stock_count(shopname)
end