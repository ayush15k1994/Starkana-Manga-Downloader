# Starkana-Downloader
Downloads all chapters of a manga from starkana.com. Is a shell script and works only on linux based Computers.

## Prerequisites:-
1. The wget utility.
2. the grep utility.
3. the sed utility.

## Steps:-
1. go to the main page of the manga you want to download. will look like       >http://starkana.jp/manga/starting-alphabet/Manga-name 
  which will contain the full list of manga chapters of that particular manga and copy that address.
2. Open the terminal and go to the folder you want the manga downloaded in.
3. Get the webpage souce using: 
>wget the-copied-address.com -q -O temp.txt 
  this will create a new file named temp.txt
4. Now get the serial number of all the manga chapters using: 
>grep -Po '(?<=http://starkana.com/download/manga/)[^"]*' temp.txt > list.txt
5. Now run the script by giving it appropriate permissions using chmod. It will download all the chapters and give them the same name as thier serial number
6. Voala all your manga are downloaded.
7. The files temp.txt and list.txt will be automatically deleted after completion of download.
