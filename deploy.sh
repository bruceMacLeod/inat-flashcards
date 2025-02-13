#!/bin/bash

# Build the React app
cd frontend
npm run build
cd ..

# Copy build files to Flask
cp -r frontend/build/static/* backend/static/
cp frontend/build/index.html backend/templates/

echo "React build files copied to Flask!"
