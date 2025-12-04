rows() {
    awk "NR==$1 {print}"
}

cols() {
    awk -F "${2:- }" "{print \$$1}"
}
