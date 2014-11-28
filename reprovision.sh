j4imversion="0.4.1-beta"

mkdir -p /usr/local/share/java
cd /usr/local/share/java
rm -f prog.jar j4im.jar

echo "Installing prog.jar..."
curl -L -o prog.jar http://pighizzini.di.unimi.it/jb/librerie/prog-3ed.jar >/dev/null 2>&1
echo "Installing j4im.jar..."
curl -L -o j4im.jar https://github.com/mapio/j4im/releases/download/${j4imversion}/j4im-${j4imversion}.jar >/dev/null 2>&1

chmod -R a+rX /usr/local/share/java

mkdir -p /usr/share/nginx/html/docs
cd /usr/share/nginx/html/docs
rm -rf prog j4im

echo "Installing prog api documentation..."
( curl -L -o /tmp/prog.zip http://pighizzini.di.unimi.it/jb/librerie/prog-doc-3ed.zip && unzip /tmp/prog.zip && mv doc prog ) >/dev/null 2>&1
echo "Installing j4im api documentation..."
( curl -L -o /tmp/j4im.zip https://github.com/mapio/j4im/releases/download/${j4imversion}/j4im-${j4imversion}-javadoc.zip && unzip /tmp/j4im.zip && mv j4im-${j4imversion}-javadoc j4im ) >/dev/null 2>&1

chmod -R a+rX /usr/share/nginx/html/docs

echo "Done."
