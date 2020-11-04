outName=$1

# 1. Remove spaces from filenames
for f in *\ *;
    do mv "$f" "${f// /_}";
done;

# 2. Merge Files
pdfunite $(ls *.pdf | sort -n) ${outName}.pdf
