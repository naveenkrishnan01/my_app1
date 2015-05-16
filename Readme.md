### My Sample app

#### To connect to heroku

```bash
git remote -v #if the push is second time
heroku	https://git.heroku.com/radiant-plains-6258.git (fetch)
heroku	https://git.heroku.com/radiant-plains-6258.git (push)
origin	https://github.com/naveenkrishnan01/my_app1.git (fetch)
origin	https://github.com/naveenkrishnan01/my_app1.git (push)
```

#### To associate your local app to Heroku

```bash
 heroku git:remote -a radiant-plains-6258
 git push heroku master
 ``` 

 #### Asset precompile

```bash
RAILS_ENV=development bundle exec rake assets:precompile
RAILS_ENV=test bundle exec rake assets:precompile

git add pu blic/assets
git commit -m 'add assets'
git push origin master
````

#### After pushing to git now push to heroku as shown from begining

```bash
For delayed process of email use redis and sidekiq
Install redis on the machine and start redis-server
Next install sidekiq gem and then run bundle exec side-kiq
```