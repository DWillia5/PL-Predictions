namespace :grab do
  task :fixtures => :environment do
    MatchFixtures::MatchFixtures.new.perform
  end
end