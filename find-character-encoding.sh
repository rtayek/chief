find jenkins-home/ -name "*.xml" | xargs chardetect3 | cut -d ':' -f 2 | sort | uniq --count

find jenkins-home/ -name "*.xml" |grep -l ISO-8859-1