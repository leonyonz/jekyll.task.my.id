#!/bin/bash

echo "Build Jekyll !!!"

echo ""

jekyll build;

echo "Proses Deploy !!!"
echo ""

read -p "Masukan Commit : " commit;

git pull

git add .

git commit -m "$commit";

git push

echo "Deploy Website !!!"

cd _site

git pull

git add . 

git commit -m "$commit"

git push

echo ""
echo "SELESAI !!"
