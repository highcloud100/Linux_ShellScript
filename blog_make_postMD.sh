#!/bin/bash

path="/home/high/highcloud100.github.io/_posts/"


if [ -z "$1" ]
then
  name="temp"
else
  name=$1
fi

cd $path

postName="`date +%Y-%m-%d`-${name}.md"

touch $postName

code $path$postName

echo "---" >> $postName
echo "title: $1" >> $postName
echo "author: highcloud100" >> $postName
echo "date: `date +%Y-%m-%d" "%H:%M:%S" "%z`" >> $postName
echo "categories: [ ? , ? ]" >> $postName
echo "tags: [?, ?, ?]" >> $postName
echo "render_with_liquid: false" >> $postName
echo "---" >> $postName


