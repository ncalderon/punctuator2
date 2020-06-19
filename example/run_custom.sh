wget -qO- http://hltshare.fbk.eu/IWSLT2012/training-monolingual-europarl.tgz | tar xvz
wget --post-data="passwd-fichero=pt27xQr%2149&x=7&y=13" -c 'https://consigna.us.es/547743/descarga' -O PLN-MULCIA-Junio-2020-Dataset.zip
unzip PLN-MULCIA-Junio-2020-Dataset.zip && mv -v PLN-MULCIA-Junio-2020-Dataset/* ./
rm -rf ./out
echo "Step 1/3"
mkdir ./out
grep -v " '[^ ]" ./PunctuationTask.train.en | \
grep -v \'\ s\   | \
grep -v \'\ ll\  | \
grep -v \'\ ve\  | \
grep -v \'\ m\   > step1.txt
echo "Step 2/3"
python dont_run_me_run_the_other_script_instead.py step1.txt step2.txt
echo "Step 3/3"
head -n -40000 step2.txt > ./out/ep.train.txt
tail -n 40000 step2.txt > step3.txt
head -n -20000 step3.txt > ./out/ep.dev.txt
tail -n 20000 step3.txt > ./out/ep.test.txt
echo "Cleaning up..."
rm -f step1.txt step2.txt step3.txt
echo "Preprocessing done. Now you can give the produced ./out dir as <data_dir> argument to data.py script for conversion and continue as described in the main README.md"
