#!/usr/bin/with-contenv bashio

# Log "Hello world!" to the Home Assistant log file
echo "Hello world!"

# Fetch options from the add-on configuration
beer=$(bashio::config 'beer')
wine=$(bashio::config 'wine')
liquor=$(bashio::config 'liquor')
name=$(bashio::config 'name')
year=$(bashio::config 'year')

# Log the options to the Home Assistant log file
echo "Options received:"
echo "Beer: $beer"
echo "Wine: $wine"
echo "Liquor: $liquor"
echo "Name: $name"
echo "Year: $year"

# Start the Python 3 HTTP server
python3 -m http.server 8000
