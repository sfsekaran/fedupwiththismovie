namespace :fedup do
  desc "Cache the themes' assets into the appropriate public directories (stylesheets, javascript, and images)."
  task :cache_theme_assets => :environment do
    theme_dirs = Dir["#{Rails.root}/themes/*"].select{|f| File.ftype(f) == 'directory'}
    theme_dirs.each do |theme_dir|
      ['stylesheets', 'javascript', 'images'].each do |asset_type|
        theme_assets_dir = "#{theme_dir}/#{asset_type}"
        public_assets_dir = "#{Rails.root}/public/#{asset_type}/theme"
        FileUtils.mkdir_p(public_assets_dir) unless File.exists? public_assets_dir
        # the /. is needed to copy the contents instead of the dir itself.
        FileUtils.cp_r(Dir["#{theme_assets_dir}/*"], public_assets_dir)
      end
    end
  end
end