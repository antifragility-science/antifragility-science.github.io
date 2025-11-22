#!/bin/bash

# Aufräum-Script für antifragility-science.github.io
# Dieses Script entfernt alle unnötigen Dateien und behält nur die wichtigen

echo "🧹 Starte Aufräumen des Repositories..."

# Erstelle Backup
if [ ! -d "../backup-antifragility" ]; then
    echo "📦 Erstelle Backup..."
    cp -r . ../backup-antifragility
    echo "✅ Backup erstellt in ../backup-antifragility"
else
    echo "⚠️  Backup existiert bereits"
fi

# Entferne unnötige Ordner
echo "🗑️  Entferne unnötige Ordner..."
directories_to_remove=(
    "_portfolio"
    "_teaching"
    "_posts"
    "markdown_generator"
    "talkmap"
    ".devcontainer"
    "tests"
    "_drafts"
    "_sass/minimal-mistakes/vendor"
)

for dir in "${directories_to_remove[@]}"; do
    if [ -d "$dir" ]; then
        rm -rf "$dir"
        echo "   ✓ Entfernt: $dir"
    fi
done

# Entferne unnötige Dateien
echo "🗑️  Entferne unnötige Dateien..."
files_to_remove=(
    "Dockerfile"
    "docker-compose.yml"
    "CONTRIBUTING.md"
    "LICENSE.md"
    "_pages/404.md"
    "_pages/archive.html"
    "_pages/category-archive.md"
    "_pages/collection-archive.html"
    "_pages/cv.md"
    "_pages/markdown.md"
    "_pages/non-menu-page.md"
    "_pages/page-archive.html"
    "_pages/sitemap.md"
    "_pages/tag-archive.md"
    "_pages/tags.html"
    "_pages/terms.md"
    "_pages/year-archive.md"
    "_pages/getting-started.md"
    "Guide.md"
    ".travis.yml"
    "test-site.sh"
    "minimal-mistakes-jekyll.gemspec"
)

for file in "${files_to_remove[@]}"; do
    if [ -f "$file" ]; then
        rm -f "$file"
        echo "   ✓ Entfernt: $file"
    fi
done

# Entferne alle Beispiel-Publikationen und Talks wenn leer
if [ -d "_publications" ]; then
    count=$(ls -1 _publications/*.md 2>/dev/null | wc -l)
    if [ $count -eq 0 ]; then
        echo "   ℹ️  _publications ist leer, behalte Ordner für zukünftige Nutzung"
    fi
fi

if [ -d "_talks" ]; then
    count=$(ls -1 _talks/*.md 2>/dev/null | wc -l)
    if [ $count -eq 0 ]; then
        echo "   ℹ️  _talks ist leer, behalte Ordner für zukünftige Nutzung"
    fi
fi

# Säubere images Ordner
echo "🖼️  Prüfe images Ordner..."
if [ -d "assets/images" ]; then
    # Liste der zu behaltenden Bilder
    keep_images=(
        "logo.png"
        "Home_1.jpg"
        "Home_2.jpg"
        "Home_3.jpg"
        "Home_4.jpg"
    )
    
    cd assets/images
    for file in *; do
        if [[ ! " ${keep_images[@]} " =~ " ${file} " ]]; then
            if [ -f "$file" ]; then
                rm "$file"
                echo "   ✓ Entfernt: assets/images/$file"
            fi
        fi
    done
    cd ../..
fi

# Erstelle fehlende wichtige Ordner
echo "📁 Erstelle notwendige Ordner..."
mkdir -p _data
mkdir -p _includes
mkdir -p _layouts
mkdir -p _pages
mkdir -p _publications
mkdir -p _talks
mkdir -p assets/css
mkdir -p assets/images

echo ""
echo "✅ Aufräumen abgeschlossen!"
echo ""
echo "📝 Nächste Schritte:"
echo "1. Kopiere die neuen Dateien aus dem antifragility-clean Ordner"
echo "2. Führe 'bundle install' aus"
echo "3. Teste mit 'bundle exec jekyll serve'"
echo "4. Committe und pushe die Änderungen"
