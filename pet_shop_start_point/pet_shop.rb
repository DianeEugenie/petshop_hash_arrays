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

    find_pet_by_name(pet_shop, pet)

    remove_customer_cash(customer,pet[:price])

    add_or_remove_cash(pet_shop, pet[:price])

    add_pet_to_customer(customer, pet)

    increase_pets_sold(pet_shop, customer_pet_count(customer))

end


















#
