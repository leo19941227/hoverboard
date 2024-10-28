#!/bin/bash

nova --region eu-west-1 cluster rsync --delete -c 530aae80-4183-4944-a3cd-5dda8e2e37d4 .git/ /efs-storage/codebase/mar/.git/
