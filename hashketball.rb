require "pry"
def game_hash
  final_hash = 
  {:home =>{:team_name => "Brooklyn Nets", 
           :colors => ["Black", "White"], 
           :players =>[{:player_name => "Alan Anderson", 
                        :number      => 0,
                        :shoe        => 16,
                        :points      => 22,
                        :rebounds    => 12,
                        :assists     => 12,
                        :steals      => 3,
                        :blocks      => 1,
                        :slam_dunks  => 1},
                      # binding.pry 
                       {:player_name => "Reggie Evans", 
                        :number      => 30,
                        :shoe        => 14,
                        :points      => 12,
                        :rebounds    => 12,
                        :assists     => 12,
                        :steals      => 12,
                        :blocks      => 12,
                        :slam_dunks  => 7},
                        
                        {:player_name => "Brook Lopez", 
                         :number      => 11,
                         :shoe        => 17,
                         :points      => 17,
                         :rebounds    => 19,
                         :assists     => 10,
                         :steals      => 3,
                         :blocks      => 1,
                         :slam_dunks  => 15},
                        
                        {:player_name => "Mason Plumlee", 
                         :number      => 1,
                         :shoe        => 19,
                         :points      => 26,
                         :rebounds    => 11,
                         :assists     => 6,
                         :steals      => 3,
                         :blocks      => 8,
                         :slam_dunks  => 5},
                        
                        {:player_name => "Jason Terry", 
                         :number      => 31,
                         :shoe        => 15,
                         :points      => 19,
                         :rebounds    => 2,
                         :assists     => 2,
                         :steals      => 4,
                         :blocks      => 11,
                         :slam_dunks  => 1}
                    ]}, 
   :away =>{:team_name => "Charlotte Hornets", 
           :colors => ["Turquoise", "Purple"], 
           :players =>[{:player_name => "Jeff Adrien", 
                        :number      => 4,
                        :shoe        => 18,
                        :points      => 10,
                        :rebounds    => 1,
                        :assists     => 1,
                        :steals      => 2,
                        :blocks      => 7,
                        :slam_dunks  => 2},
                        
                       {:player_name => "Bismack Biyombo", 
                        :number      => 0,
                        :shoe        => 16,
                        :points      => 12,
                        :rebounds    => 4,
                        :assists     => 7,
                        :steals      => 22,
                        :blocks      => 15,
                        :slam_dunks  => 10},
                        
                        {:player_name => "DeSagna Diop", 
                         :number      => 2,
                         :shoe        => 14,
                         :points      => 24,
                         :rebounds    => 12,
                         :assists     => 12,
                         :steals      => 4,
                         :blocks      => 5,
                         :slam_dunks  => 5},
                        
                        {:player_name => "Ben Gordon", 
                         :number      => 8,
                         :shoe        => 15,
                         :points      => 33,
                         :rebounds    => 3,
                         :assists     => 2,
                         :steals      => 1,
                         :blocks      => 1,
                         :slam_dunks  => 0},
                        
                        {:player_name => "Kemba Walker", 
                         :number      => 33,
                         :shoe        => 15,
                         :points      => 6,
                         :rebounds    => 12,
                         :assists     => 12,
                         :steals      => 7,
                         :blocks      => 5,
                         :slam_dunks  => 12}
                    ]}
  }
  
  final_hash
end 

def num_points_scored(player_name)
  hash = game_hash
  # binding.pry
  num_of_players = (hash[:home][:players]).length
  counter = 0 
  while counter < num_of_players
      if hash[:home][:players][counter][:player_name] == player_name 
        return hash[:home][:players][counter][:points]
      end 
      
      if hash[:away][:players][counter][:player_name] == player_name 
        return hash[:away][:players][counter][:points]
      end 
    counter += 1 
  end 
end 

def shoe_size(player_name)
  hash = game_hash
  # binding.pry
  num_of_players = (hash[:home][:players]).length
  counter = 0 
  while counter < num_of_players
      if hash[:home][:players][counter][:player_name] == player_name 
        return hash[:home][:players][counter][:shoe]
      end 
      
      if hash[:away][:players][counter][:player_name] == player_name 
        return hash[:away][:players][counter][:shoe]
      end 
    counter += 1 
  end 
end  

def team_colors(team_name)
  hash = game_hash
  # binding.pry
      if hash[:home][:team_name] == team_name 
        return hash[:home][:colors]
      end 
      
      if hash[:away][:team_name] == team_name
        return hash[:away][:colors]
      end 
end 


def team_names()
  hash = game_hash
  # l = hash.length 
  # counter = 0 
  arr = []
  # binding.pry 
  # while counter < l 
    arr.push(hash[:home][:team_name].to_s)
    arr.push(hash[:away][:team_name].to_s)
  # end 
   arr    
end 

def player_numbers(team_name)
  hash = game_hash
  # binding.pry
  num_of_players = (hash[:home][:players]).length
  counter = 0 
  arr = []
  if hash[:home][:team_name] == team_name 
      while counter < num_of_players
        arr.push(hash[:home][:players][counter][:number].to_i)
        counter += 1
      end 
  return arr 
  end 
  
  if hash[:away][:team_name] == team_name 
      while counter < num_of_players
        arr.push(hash[:away][:players][counter][:number].to_i)
        counter += 1
      end 
  return arr 
  end  
end 



def player_stats(player_name)
  hash = game_hash
  final_hash = {}
  # binding.pry
  num_of_players = (hash[:home][:players]).length
  counter = 0 
  while counter < num_of_players
      if hash[:home][:players][counter][:player_name] == player_name 
        
        
  final_hash[:number]=hash[:home][:players][counter][:number]
  final_hash[:shoe]   =hash[:home][:players][counter][:shoe]
  final_hash[:points] =hash[:home][:players][counter][:points]
  final_hash[:rebounds]=hash[:home][:players][counter][:rebounds]
  final_hash[:assists]=hash[:home][:players][counter][:assists]
  final_hash[:steals] = hash[:home][:players][counter][:steals]
  final_hash[:blocks] =hash[:home][:players][counter][:blocks]
  final_hash[:slam_dunks]=hash[:home][:players][counter][:slam_dunks]
        return final_hash
      end 
      
  if hash[:away][:players][counter][:player_name] == player_name 
        
        
  final_hash[:number]=hash[:away][:players][counter][:number]
  final_hash[:shoe]=hash[:away][:players][counter][:shoe]
  final_hash[:points]=hash[:away][:players][counter][:points]
  final_hash[:rebounds]=hash[:away][:players][counter][:rebounds]
  final_hash[:assists]=hash[:away][:players][counter][:assists]
  final_hash[:steals]=hash[:away][:players][counter][:steals]
  final_hash[:blocks]=hash[:away][:players][counter][:blocks]
  final_hash[:slam_dunks]=hash[:away][:players][counter][:slam_dunks]
        return final_hash
      end 
    counter += 1 
  end 
end  

def big_shoe_rebounds#(team_name)
  hash = game_hash
  # binding.pry
  num_of_players = (hash[:home][:players]).length
  counter = 1
  max = hash[:home][:players][0][:shoe] 
  player_b_n = hash[:home][:players][0][:rebounds]
      while counter < num_of_players
        if (hash[:home][:players][counter][:shoe]>max)
          max = hash[:home][:players][counter][:shoe]
          player_b_n = hash[:home][:players][counter][:rebounds]
        end 
        counter += 1
      end
  max1 = hash[:away][:players][0][:shoe] 
  player_b_n_1 = hash[:away][:players][0][:rebounds]
  
      while counter < num_of_players
        if (hash[:away][:players][counter][:shoe]>max1)
          max1 = hash[:away][:players][counter][:shoe]
          player_b_n = hash[:away][:players][counter][:rebounds]
        end 
        counter += 1
      end
  big_max = [player_b_n_1, player_b_n].max
end 

def most_points_scored 
  hash = game_hash
  num_of_players = (hash[:home][:players]).length
  counter = 1
  max = hash[:home][:players][0][:points] 
  player_max_pts = hash[:home][:players][0][:player_name]
  
  second_max = hash[:away][:players][0][:points] 
  player_max_pts01 = hash[:away][:players][0][:player_name]
  
      while counter < num_of_players
          if (hash[:home][:players][counter][:points]>max)
            max = hash[:home][:players][counter][:points]
            player_max_pts = hash[:home][:players][counter][:player_name]
          end 
          if (hash[:away][:players][counter][:points]>second_max)
            second_max = hash[:away][:players][counter][:points]
            player_max_pts01 = hash[:away][:players][counter][:player_name]
          end 
        counter += 1
      end
      # binding.pry 
   max > second_max ? player_max_pts : player_max_pts01
end  

def winning_team 
  hash = game_hash
  num_of_players = (hash[:home][:players]).length
  counter = 0
  
  home_team_pts = 0 
  away_team_pts = 0
  
      while counter < num_of_players
          home_team_pts += hash[:home][:players][counter][:points]
          away_team_pts += hash[:away][:players][counter][:points]
          counter += 1
      end
      home_team_pts>away_team_pts ? hash[:home][:team_name] : hash[:away][:team_name]
      # binding.pry 
end  

def player_with_longest_name 
  hash = game_hash
  num_of_players = (hash[:home][:players]).length
  counter = 1 
  
  home_max = hash[:home][:players][0][:player_name].length
  home_max_p = hash[:home][:players][0][:player_name]
  away_max = hash[:away][:players][0][:player_name].length
  away_max_p = hash[:away][:players][0][:player_name]
  
      while counter < num_of_players
          if (hash[:home][:players][counter][:player_name].length>home_max)
            home_max_p = hash[:home][:players][counter][:player_name]
            home_max = hash[:home][:players][counter][:player_name].length
          end  
          if (hash[:away][:players][counter][:player_name].length>away_max)
            away_max_p = hash[:away][:players][counter][:player_name]
            away_max = hash[:away][:players][counter][:player_name].length
          end 
        counter += 1
      end
      # binding.pry 
  home_max > away_max ? home_max_p : away_max_p
  
end  

def long_name_steals_a_ton?
  
 big_score = most_points_scored
 long_name = player_with_longest_name 
  
 big_score == long_name ? true : false 
  
  binding.pry 
end 



