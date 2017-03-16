desc "This task is called by the Heroku scheduler add-on"
task :update_meme => :environment do
  puts "Updating meme..."
  API.refresh
  puts "done."
end
