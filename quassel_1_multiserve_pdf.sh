echo 'Killing all Jekyll instances'
kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear


echo "Building PDF-friendly HTML site for quassel Writers ..."
jekyll serve --detach --config configs/quassel/config_writers.yml,configs/quassel/config_writers_pdf.yml
echo "done"

echo "Building PDF-friendly HTML site for quassel Designers ..."
jekyll serve --detach --config configs/quassel/config_designers.yml,configs/quassel/config_designers_pdf.yml
echo "done"

echo "All done serving up the PDF-friendly sites. Now let's generate the PDF files from these sites."
echo "Now run . quassel_2_multibuild_pdf.sh"