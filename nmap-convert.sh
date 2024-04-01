# This script converts all nmap XML result files in HTML files 
xml_files=()

while IFS= read -r -d '' file; do
  xml_files+=("$file")
done < <(find . -type f -name "*.xml" -print0)

for xml_file in "${xml_files[@]}"; do
  echo "Processing file: ${xml_file}"
  # ${xml_file%%.*} does not work with ./FILENAME
  filename=$(basename ${xml_file} .xml)
  xsltproc -o ${filename}.html ${NMAPBOOTSTRAPXSL} ${xml_file}
done
