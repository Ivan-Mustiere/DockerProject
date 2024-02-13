# Utiliser l'image officielle de Python comme image de base
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt .
COPY script.py .
COPY script2.py .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exécuter le script Python lorsque le conteneur démarre
CMD ["python3 script2"]
