#!/bin/bash

set -e -x

mkdir private _site public

python manage.py fetch_gci_task_data private

python manage.py collectstatic --noinput
python manage.py distill-local public --force
