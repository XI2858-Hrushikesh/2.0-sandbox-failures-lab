#!/bin/bash
if curl -sf http://localhost:80 > /dev/null; then
  exit 0
else
  exit 1
fi
