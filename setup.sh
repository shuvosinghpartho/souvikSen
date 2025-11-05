#!/bin/bash

# A shell script to generate a complete, UI-focused frontend project structure.
# This version correctly populates the component subdirectories.

# --- Configuration ---
PROJECT_NAME="traffic-token-ui"

# --- Start Script ---
echo "🚀 Initializing a complete UI project structure for '$PROJECT_NAME'..."
echo ""

# --- Create Project Root Directory ---
if [ -d "$PROJECT_NAME" ]; then
    echo "⚠️ Directory '$PROJECT_NAME' already exists. Skipping root creation."
else
    echo "📁 Creating root directory: $PROJECT_NAME/"
    mkdir -p "$PROJECT_NAME"
fi
cd "$PROJECT_NAME"

# --- Create Root Level Files ---
echo "📄 Creating root configuration files..."
touch .gitignore
touch package.json
touch tailwind.config.js
touch postcss.config.js
touch README.md

# --- Create Public Directory ---
echo "📁 Creating public directory..."
mkdir -p public
touch public/favicon.ico
touch public/index.html

# --- Create 'src' Directory and subdirectories ---
echo "📁 Creating 'src' directory and its sub-structure..."
mkdir -p src/assets/fonts
mkdir -p src/assets/icons
mkdir -p src/assets/images
mkdir -p src/components/common
mkdir -p src/components/layout
mkdir -p src/components/specific
mkdir -p src/pages
mkdir -p src/styles

# --- Create placeholder files in asset directories ---
touch src/assets/fonts/.gitkeep
touch src/assets/icons/.gitkeep
touch src/assets/images/.gitkeep

# --- Create Component Files ---
echo "📄 Populating component directories..."

# Common, reusable components
echo "   - Creating files in 'components/common/'"
touch src/components/common/Button.js
touch src/components/common/Card.js
touch src/components/common/InputField.js
touch src/components/common/Loader.js
touch src/components/common/Modal.js
touch src/components/common/Icon.js

# Layout components for page structure
echo "   - Creating files in 'components/layout/'"
touch src/components/layout/Header.js
touch src/components/layout/Sidebar.js
touch src/components/layout/PageWrapper.js
touch src/components/layout/BottomNavBar.js

# Components specific to certain pages/features
echo "   - Creating files in 'components/specific/'"
touch src/components/specific/StatCard.js
touch src/components/specific/TrafficChart.js
touch src/components/specific/VerificationForm.js
touch src/components/specific/HistoryTable.js
touch src/components/specific/ProfileDropdown.js

# --- Create Page (View) Files ---
echo "📄 Creating page view files..."
touch src/pages/Analytics.js
touch src/pages/Dashboard.js
touch src/pages/History.js
touch src/pages/Login.js
touch src/pages/Settings.js
touch src/pages/Verification.js

# --- Create Style and Theme Files ---
echo "📄 Creating styling and theme files..."
touch src/styles/global.css
touch src/styles/theme.js

# --- Create Main App Entrypoint Files ---
echo "📄 Creating app entry points..."
touch src/App.js
touch src/index.js

# --- Final Confirmation ---
echo ""
echo "✅ UI project structure for '$PROJECT_NAME' created successfully!"
echo "All component directories are now populated."
echo "Navigate into your new project with: cd $PROJECT_NAME"
echo ""
echo "Final Structure:"

# Display the generated structure using the 'tree' command if it's installed.
# Otherwise, use 'ls -RF' as a fallback.
if command -v tree &> /dev/null
then
    tree -F
else
    echo "Tree command not found. Using 'ls -RF' as a fallback to show structure:"
    ls -RF
fi