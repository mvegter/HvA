folders=("portfolio" "template")

# Rebuild each 'project'
for d in ${folders[*]}
do
    cd $PWD\\$d
    pdflatex $d".tex"
    pdflatex $d".tex" # rebuild second time for TOC
    cd ..
done

# Rebuild again as some are dependant
for d in ${folders[*]}
do
    cd $PWD\\$d
    pdflatex $d".tex"
    pdflatex $d".tex" # rebuild second time for TOC
    cd ..
done

read -p "Press enter to continue..."
