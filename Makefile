clean:
	@find . -name '*.pyc' -delete
	@find . -name __pycache__  -type d | xargs rm -rf
	@echo clean done

install:
	CFLAGS='-std=c99' && pip install -i http://pypi.douban.com/simple -r requirements.txt --trusted-host pypi.douban.com

mysql:
	mysql -uroot --password="Yunmanman56!" -h 127.0.0.1 -e "CREATE DATABASE if not exists beidou DEFAULT CHARACTER SET utf8"
	python manage.py makemigrations && python manage.py migrate

dependency:
	@pip freeze > requirements.txt

run:
	python manage.py runserver 0.0.0.0:8000
