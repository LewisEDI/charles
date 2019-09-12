def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  snacks = person[:favourites][:snacks]
  for snack in snacks
  return true if snack == food
  end
end

def add_friend(person, new_friend)
  person[:friends] << new_friend
end

def delete_friend(person, ex_friend)
  person[:friends].delete(ex_friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(lender, borrower, amount)
  lender[:monies] -= amount
  borrower[:monies] += amount
end

def all_snacks(people)
  combined_snacks = []
  for person in people
    combined_snacks.concat(person[:favourites][:snacks])
  end
  return combined_snacks
end

def no_friends(people)
  friendless = []
  for person in people
    if person[:friends].empty?
    friendless << person[:name]
    end
  end
  return friendless
end
