desc 'Deploy the app'
task :deploy do
  sh "git push heroku master && heroku run rake db:migrate && heroku config:set COMMIT_HASH=$(git rev-parse --short HEAD)"
end
