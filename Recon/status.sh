#!/bin/bash
bash -c "for lines in $(cat hosts);do curl -s -o /dev/null -I -w "%{http_code}" '$lines\n';done"
