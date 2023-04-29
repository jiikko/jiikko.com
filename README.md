# jiikko.com
## ローカルでの確認
```
docker build -t jiikko.com .
docker run -p 8080:8080 --rm -it jiikko.com
```

## deploy
* pushするだけでOK

```
gcloud auth login
gcloud config set project jiikko
docker buildx create --use --name multi-arch-builder
docker buildx use multi-arch-builder
docker buildx build --platform linux/amd64 -t gcr.io/jiikko/jiikko.com . --push
gcloud run deploy --image gcr.io/jiikko/jiikko.com --max-instances=1 --region=asia-northeast1 --allow-unauthenticated
```
