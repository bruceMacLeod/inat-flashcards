#!/bin/bash

# Build the React app
cd frontend
npm run build
cd ..

# Copy build files to Flask
cp -r frontend/build/static/* backend/app/static/
cp frontend/build/index.html backend/app/templates/

echo "React build files copied to Flask!"
