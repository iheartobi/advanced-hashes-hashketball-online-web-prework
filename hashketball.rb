# # Write your code here!
require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismack Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(name)
  hash = game_hash
  game_hash.each do |two_teams, team_info|
    team_info[:players].each do |player_name, player_stats|
      if player_name == name
        return hash[two_teams][:players][name][:points]
      end
    end
  end
end 

def shoe_size(name)
  hash = game_hash
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_name, player_stats|
      if player_name == name
        return hash[team][:players][name][:shoe]
      end
    end
  end
end 

def team_colors(name)
  hash = game_hash
  game_hash.each do |team, data|
    if hash[team].values.include?(name)
      data.each do |attribute, info|
        if attribute == :colors
          return info
    end
   end
  end
 end
end 
    
def team_names
  hash = game_hash
  array = []
  hash.each do |team, data|
    data.each do |attribute, info|
      if attribute == :team_name
        array << info
      end
    end
  end
  return array
end 

def player_numbers(team_name)
  hash = game_hash
  array = []
  hash.each do |team, data|
    if hash[team].values.include?(team_name)
      data.each do |attribute, info|
        if info.class == Hash 
          info.each do |player, stats|
            stats.each do |stat, int|
              if stat == :number
                array << int.to_i
       end
      end
     end
    end
   end
  end
 end
 return array
end 

def player_stats(name)
  hash = game_hash
  hash.each do |team, data|
    data.each do |attribute, info|
      if info.include?(name)
        return hash[team][attribute][name]
      end
    end
  end
end 

def big_shoe_rebounds
  hash = game_hash
  player_name = ""
  shoe_size = 0
  hash.each do |team, data|
    data.each do |attribute, info|
      if info.class == Hash 
        info.each do |player, stats|
          stats.each do |stat, int|
            if stat == :shoe
              if int > shoe_size
                shoe_size = int
                player_name = player
              end
            end
          end
        end
        return hash[team][attribute][player_name][:rebounds]
      end
    end
  end
end 







# def all_players
#   hash1 = game_hash[:home][:players]
#   hash2 = game_hash[:away][:players]
#   all_players = hash1.merge(hash2)
# end 

# def num_points_scored(players_name)
#   points = []
#   all_players.each do |name_string, attributes_hash|
#     if name_string == players_name
#       points << attributes_hash[:points]
#     end
#   end
# return points[0]
# end 

# def shoe_size(players_name)
#   shoe = []
#   all_players.each do |name_string, attributes_hash|
#     if name_string == players_name
#       shoe << attributes_hash[:shoe]
#     end
#   end
#   return shoe[0]
# end 

# def all_teams
# team1 = game_hash[:home][:team_name]
#   team2 = game_hash[:away][:team_name]
#   all_teams = team1.merge(team2)
# end

  
# def team_colors(team_name)
#   binding.pry
#   teams = []
#   two_teams.each do |team, color|
#   if all_teams == team_name
#     teams << attribute_hash[:colors]
#   end
#   end 
# end

  




