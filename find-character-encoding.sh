find jenkins-home/ -name "*.xml" | xargs chardetect3 | cut -d 
':' -f 2 | sort | uniq -c