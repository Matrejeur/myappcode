if [-d "django"]
then
 echo "python virtualenv named django exists"
 else
    python3 -m venv django
fi

echo $PWD
source django/bin/activate

pip3 install -r requirements.txt


if [-d "logs"]
then
 echo "log folder exists exists"
 else
    mkdir logs
    touch logs/error.logs logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup finished"