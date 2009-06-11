namespace :bundle_fu do
  desc "Clear the javascript and stylesheet caches"
  task :clear => [:clear_javascript_cache, :clear_stylesheet_cache] do
  end

  desc "Clear the javascript cache"
  task :clear_javascript_cache do
    javascripts_dir = "#{RAILS_ROOT}/public/javascripts/cache"
    if File.exists?(javascripts_dir)
      puts "Removing #{javascripts_dir}"
      remove_dir(javascripts_dir, true)
    end
  end

  desc "Clear the stylesheet cache"
  task :clear_stylesheet_cache do
    stylesheets_dir = "#{RAILS_ROOT}/public/stylesheets/cache"
    if File.exists?(stylesheets_dir)
      puts "Removing #{stylesheets_dir}"
      remove_dir(stylesheets_dir, true)
    end
  end
end