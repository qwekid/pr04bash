find_more70_csv(){
    awk -F ";" '$4 > 70 {print "\033[1;34m" $1 $2 $3 "\033[0;31m" $4 }' supplier_k_import.csv
}
find_more70_csv;