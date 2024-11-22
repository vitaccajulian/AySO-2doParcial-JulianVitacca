mkdir -p ~/docker2Parcial
cd ~/docker2Parcial
mkdir -p appHomeBanking
echo '<!DOCTYPE html><html><head><title>Index</title></head><body><h1>Página Index</h1></body></html>' > appHomeBanking/index.html
echo '<!DOCTYPE html><html><head><title>Contacto</title></head><body><h1>Página de Contacto</h1></body></html>' > appHomeBanking/contacto.html
ls appHomeBanking
cat appHomeBanking/index.html
cat appHomeBanking/contacto.html
echo 'FROM nginx
COPY appHomeBanking /usr/share/nginx/html' > Dockerfile
docker login -u vitaccajulian
docker build -t vitaccajulian/2parcial-ayso:v1.0 .
docker image list
docker push vitaccajulian/2parcial-ayso:v1.0
sudo docker push vitaccajulian/2parcial-ayso:v1.0
docker run -d -p 8080:80 vitaccajulian/2parcial-ayso:v1.0
docker container ls




