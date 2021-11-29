stty -icanon time 0 min 0
i=0
r_flag=0
echo "Run with -r to remove all monke selfie q to stop running"
find -type f -name '*wget*' -delete
until getopts r flag
do
read input
if [ $input == "q" ]; then
stty sane
exit
fi
wget https://media.npr.org/assets/img/2017/09/12/macaca_nigra_self-portrait-3e0070aa19a7fe36e802253048411a38f14a79f8-s800-c85.webp -O monke$i.webp
let i++
done

if [ -r ]; then
stty sane
echo "Monke will miss you :("
find -type f -name '*monke*' ! -name "*.sh*" -delete
fi
