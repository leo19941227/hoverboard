#!/bin/bash

nova --region eu-west-1 cluster rsync --delete -c 5f75e911-0048-4f82-bb37-31183d3f561b .git/ /efs-storage/codebase/mar/.git/
