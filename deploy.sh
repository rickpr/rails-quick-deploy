user=`whoami`
sudo ./config.sh $1 $user
cp Procfile /usr/share/nginx/html/rails
(export $(cat .env)
export RAILS_ENV=production
cd /usr/share/nginx/html/rails
bundle
rake db:create
rake db:schema:load
rake db:seed
rake assets:precompile
foreman start)
