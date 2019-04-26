python3 manage.py test ESOP -v 2
python3 manage.py test services -v 2
git add --all
git status
git commit -m "esopweb_change"
git push heroku master
heroku run:detached python3 manage.py migrate

