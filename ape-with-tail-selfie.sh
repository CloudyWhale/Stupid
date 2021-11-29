i=0
r_flag=0
echo "Run with -r to remove all monke selfie"
find -type f -name '*wget*' -delete
until getopts r flag
do
wget https://media.npr.org/assets/img/2017/09/12/macaca_nigra_self-portrait-3e0070aa19a7fe36e802253048411a38f14a79f8-s800-c85.webp -O monke$i.webp
let i++
done

if [ -r ]; then
echo "Monke will miss you :("
find -type f -name '*monke*' -delete
fi
