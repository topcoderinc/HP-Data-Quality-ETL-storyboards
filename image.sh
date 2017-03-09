#!/bin/sh

dir=$1
cd "$dir"
outfile=index.html


echo '<html><header>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</header><style> body{ background: #000000; } a { color: #ffffff; text-decoration: none; } </style><body><div style="text-align:center;" class = "thumbnail" >'>$outfile
ls *.jpg *.jpeg *.bmp *.png *.gif|while read pic; do
echo '<div class = "col-sm-6 col-md-2"><a href="'$dir/$pic'"''  ''><img src="'$dir/$pic'" width="300" height="150" border="1"
style="padding-top:2px;padding-bottom:2px;padding-left:2px;padding-right:2px;
margin-top:5px;margin-bottom:5px;margin-left:5px;margin-right:5px;a:#fff;">'$pic'</a></div>'
done>>$outfile
echo '</div></body></html>'>>$outfile

exit
