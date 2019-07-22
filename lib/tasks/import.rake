require 'csv'
namespace :import do
  desc "TODO"
  task team: :environment do
    filename = File.join( Rails.root, "lib/TEAM.csv" )
    CSV.foreach(filename, headers: true) do |row|
      Team.create(shortname:row[0],city:row[1],conference_id:row[2])
    end
  end

  desc "TODO"
  task coach: :environment do
    filename = File.join( Rails.root, "lib/COACH.csv" )
    CSV.foreach(filename, headers: true) do |row|
      Coach.create(firstname:row[0],lastname:row[1],yearstart:row[2],team_id:row[3])
    end
  end

  desc "TODO"
  task player: :environment do
    filename = File.join( Rails.root, "lib/PLAYER.csv" )
    CSV.foreach(filename, headers: true) do |row|
      p = Player.new(firstname:row[1],lastname:row[2],position:row[3],team_id:row[4])
      p.id = row[0]
      p.save
    end
  end

  desc "TODO"
  task stats: :environment do
    filename = File.join( Rails.root, "lib/STATS.csv" )
    CSV.foreach(filename, headers: true) do |row|
      Stat.create(games_played:row[0],ppg:row[1],apg:row[2],rpg:row[3],mpg:row[4],per:row[5],fg:row[6],ft:row[7],player_id:row[8])
    end
  end

  desc "TODO"
  task socialmedia: :environment do
    filename = File.join( Rails.root, "lib/SOCIALMEDIA1.csv" )
    CSV.foreach(filename, headers: true) do |row|
      player = Player.find(row[0])
      if player
        player.twitter_handle = row[5]
        player.twitter_num_followers = row[6]
        player.instagram_handle = row[7]
        player.instagram_num_followers = row[8]
        player.save
      end
    end
  end

end
