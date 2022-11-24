# Install dependencies
sudo apt update
sudo apt install maven gradle libpcap-dev

# Install jnetpcap inside this project via maven
cd ./jnetpcap/linux/jnetpcap-1.4.r1425
mvn install:install-file -Dfile=jnetpcap.jar -DgroupId=org.jnetpcap -DartifactId=jnetpcap -Dversion=1.4.1 -Dpackaging=jar
cd ../../..

# Build gradle with version 5.0
gradle wrapper --gradle-version 5.0

# Add execution permission to gradlew
chmod +x gradlew
