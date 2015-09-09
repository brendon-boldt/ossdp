#/bin/bash

bundle exec rails runner 'require("./db/update_content.rb"); UpdateContent.new.change'
