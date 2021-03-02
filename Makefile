build:
	docker build --force-rm $(options) -t django-website-tutorial:latest .

build-prod:
	$(MAKE) build options="--target production"



compose-start:
	docker-compose up --remove-orphans $(options)

compose-stop:
	docker-compose down --remove-orphans $(options)

compose-manage-py:
	# --rm --> remove flag
	 docker-compose run --rm $(option) website python manage.py $(cmd)

	 # Example:
	 	#$ make compose-manage-py cmd="makemigrations"
		#$ make compose-manage-py cmd="createsuperuser"
