for f in *.tiff; do
  convert ./"$f" ./"${f%.tiff}.jpg"
done

