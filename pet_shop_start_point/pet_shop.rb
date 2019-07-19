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
