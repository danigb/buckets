namespace :buckets do
  desc "Sync extra files from buckets plugin."
  task :sync do
    system "rsync -ruv vendor/plugins/buckets/db/migrate db"
    system "rsync -ruv vendor/plugins/buckets/public ."
  end
end
