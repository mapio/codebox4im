export ALL_PROXY=www:8080

mkdir -p "$HOME/.labprog"
cd "$HOME/.labprog"
rm -f prog.jar j4im.jar

echo "Installing prog.jar..."
curl -L -o prog.jar http://pighizzini.di.unimi.it/jb/librerie/prog-3ed.jar >/dev/null 2>&1
echo "Installing j4im.jar..."
curl -L -o j4im.jar https://github.com/mapio/j4im/releases/download/0.4-beta/j4im-0.4-beta.jar >/dev/null 2>&1

mkdir -p "$HOME/.labprog/docs"
cd "$HOME/.labprog/docs"
rm -rf prog j4im

echo "Installing prog api documentation..."
( curl -L -o /tmp/prog.zip http://pighizzini.di.unimi.it/jb/librerie/prog-doc-3ed.zip && unzip /tmp/prog.zip && mv doc prog ) >/dev/null 2>&1
echo "Installing j4im api documentation..."
( curl -L -o /tmp/j4im.zip https://github.com/mapio/j4im/releases/download/0.4-beta/j4im-0.4-beta-javadoc.zip && unzip /tmp/j4im.zip && mv j4im-0.4-beta-javadoc j4im ) >/dev/null 2>&1

echo "Setting classpath"

echo 'export CLASSPATH="${CLASSPATH:+$CLASSPATH:}".:$HOME/.labprog/prog.jar:$HOME/.labprog/j4im.jar' >> "$HOME/.bashrc"

echo "Done."
