isBash=$(ps -p $$ | grep bash)
if [ -z "$isBash" ]
then
  echo "shell not bash, install manually"
else
  echo "export PATH=$(pwd):\$PATH" >> ~/.bashrc
  echo "Added $(pwd) to PATH. Run:"
  echo "source ~/.bashrc"
fi