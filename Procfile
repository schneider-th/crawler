redis:        redis-server /usr/local/etc/redis.conf
unicorn:      unicorn -c config/unicorn.rb
check:       bundle exec sidekiq -q check,1 default -c 2
