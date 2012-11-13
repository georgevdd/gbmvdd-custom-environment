#!/bin/bash

input=$1
output=${input%lhs}html

pandoc "${input}" -t html5+lhs | sed -E 's#(</pre>|</p>)#\1\
#g' > "${output}"
