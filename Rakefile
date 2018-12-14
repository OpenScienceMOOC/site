# ---------------------------------------
# Rakefile
# ---------------------------------------

# Help
# 
# rake      -> Default to rake help
# rake help -> List all tasks with a description
task :help do
  puts "\n"
  puts "List of all available tasks"
  puts "---------------------------"
  puts "\n"
  system("rake -sT")
  puts "\n"
end

# default to help message
task :default => ["help"]
# END Help

# Install
#
# rake install        -> Default to rake install:global
# rake install:global -> Install gems' dependencies system-wide
# rake install:local  -> Install gems' dependencies in vendor/bundle directory"
namespace 'install' do

  # Install all gems globally (default)
  task :global do
    puts "Installing Jekyll and all dependencies..."
    system("bundle install")
  end
  
  desc "Install gems' dependencies in vendor/bundle directory"
  task :local do
    puts "Installing Jekyll and all dependencies in vendor/bundle directory..."
    system("bundle install --path 'vendor/bundle'")
  end

end

desc "Install all gems globally"
task install: ["install:global"]
# END Install

# Serve
#
# rake serve     -> Run Jekyll in production mode
# rake serve:dev -> Run Jekyll in development mode
namespace 'serve' do

  # Run Jekyll in production mode (default)
  task :prod do
    puts "Run Jekyll in production mode..."
    system("bundle exec jekyll serve --watch --config _config.yml")
  end

  desc "Run Jekyll in development mode"
  task :dev do
    puts "Starting Jekyll in development mode..."
    system("bundle exec jekyll serve --watch --config _config.yml,_config.dev.yml")
  end

end

desc "Run Jekyll in production mode"
task serve: ["serve:prod"]
# END serve

