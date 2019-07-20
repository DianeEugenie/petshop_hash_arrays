require('pry')

#1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

#4
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#5
def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

#6
def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

#7
def pets_by_breed(pet_shop, breed)

found_pets = []

  for pet in pet_shop[:pets]
    if (pet[:breed] == breed)
      found_pets.push(pet)
    end

  end

  return found_pets

end

#8
def find_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    if (pet[:name] == name)
      return pet
    end

  end

  return nil

end

#9

def remove_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    if (pet[:name] == name)
      pet_shop[:pets].delete(pet)
    end

  end

  return nil

end

#10

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#11

def customer_cash(customers)
  return customers[:cash]
end

#12
def remove_customer_cash(customers, amount)
  customers[:cash] -= amount
end

#13
def customer_pet_count(customers)
  return customers[:pets].count()
end

#14
def add_pet_to_customer(customers,new_pet)
  customers[:pets].push(new_pet)
end

#OPTIONAL

#15
def customer_can_afford_pet(customers, new_pet)
  if (customers[:cash] >= new_pet[:price])
    return true
  else
    return false
  end
end

#16

def sell_pet_to_customer(pet_shop, pet, customer)

  if pet != nil #so if pet is found
    find_pet_by_name(pet_shop,pet[:name]) #find the pet

    if customer_can_afford_pet(customer, pet) #can customer afford pet then do the following:
      #check the stock before the sale
      stock_before_sale = stock_count(pet_shop)
      #remove cash from the customer
      remove_customer_cash(customer,pet[:price])
      #add cash to the cash of the pet shop
      add_or_remove_cash(pet_shop, pet[:price])
      #remove the pet from the pet shop
      remove_pet_by_name(pet_shop, pet[:name])
      #add the pet to the customer
      add_pet_to_customer(customer, pet)
      #check the stock after the sale
      stock_after_sale = stock_count(pet_shop)
      #increase the pets sold with stock before sale divided by stock after the sale
      increase_pets_sold(pet_shop, (stock_before_sale - stock_after_sale))

    end
  end
end





#ATTEMPT TO PASS FIRST TEST OF SELL_PET_TO_CUSTOMER

# def sell_pet_to_customer(pet_shop, pet, customer)
#
#     find_pet_by_name(pet_shop, pet)
#
#     remove_customer_cash(customer,pet[:price])
#
#     add_or_remove_cash(pet_shop, pet[:price])
#
#     add_pet_to_customer(customer, pet)
#
#     increase_pets_sold(pet_shop, customer_pet_count(customer))
#
# end

#SUCCESSFUL PASS OF FIRST AND THIRD TEST FOR SELL_PET_TO_CUSTOMER
# def sell_pet_to_customer(pet_shop, pet, customer)
#
# sold_pet = find_pet_by_name(pet_shop, pet[:name])
# #binding.pry
#
#
#     if (sold_pet == pet) && customer_can_afford_pet(customer, pet)
#
#       find_pet_by_name(pet_shop, pet[:name])
#
#       remove_customer_cash(customer,pet[:price])
#
#       add_or_remove_cash(pet_shop, pet[:price])
#
#       add_pet_to_customer(customer, pet)
#
#       increase_pets_sold(pet_shop, 1)
#
#     end
#
# end

#Try to get all three successful!!!!!

# def sell_pet_to_customer(pet_shop, pet, customer)

# sold_pet = find_pet_by_name(pet_shop, pet[:name])

#
#     if (sold_pet == nil)
#
#     elsif (sold_pet != nil) && customer_can_afford_pet(customer, pet)
#
#       remove_customer_cash(customer,pet[:price])
#
#       add_or_remove_cash(pet_shop, pet[:price])
#
#       add_pet_to_customer(customer, pet)
#
#       increase_pets_sold(pet_shop, 1)
#       #customer_pet_count(customer) instead of 1
#
#     else
#
#     end
#
# end
