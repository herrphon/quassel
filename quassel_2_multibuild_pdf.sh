# Doc Writers
echo "Building the quassel Writers PDF ..."
prince --javascript --input-list=../doc_outputs/quassel/writers-pdf/prince-file-list.txt -o quassel/files/quassel_writers_pdf.pdf;
echo "done"

# Doc Designers
echo "Building quassel Designers PDF ..."
prince --javascript --input-list=../doc_outputs/quassel/designers-pdf/prince-file-list.txt -o quassel/files/quassel_designers_pdf.pdf;
echo "done"

echo "All done building the PDFs!"
echo "Now build the web outputs: . quassel_3_multibuild_web.sh"