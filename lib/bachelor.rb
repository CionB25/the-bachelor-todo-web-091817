def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_info|
    if contestant_info["status"] = "winner"
      win = contestant_info["name"].split(" ")
      return win.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometowners = 0
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        hometowners += 1
      end
    end
  end
  hometowners
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = []
  data[season].each do |age_key, age_value|
    total << age_key["age"].to_f
  end
  return (total.reduce(:+) / total.length).round
end
