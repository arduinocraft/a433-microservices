# Membuat Docker image dari Dockerfile dengan nama "item-app" dan tag "v1"
docker build -t item-app:v1 .

# Melihat image yang telah di build untuk memastikan image telah dibuat
docker images

# Melakukan tag versi dan repository GHCR
docker tag item-app:v1 ghcr.io/arduinocraft/a433-microservices/item-app:v1

# Login GHCR dengan menggunakan Github Token (PAT)
echo "$GH_PAT" | docker login ghcr.io -u arduinocraft --password-stdin

# Push Docker image ke GHCR
docker push ghcr.io/arduinocraft/a433-microservices/item-app:v1

