#!/bin/sh
#==============================================================================
#lh_img_gallery - Linux Html Image Gallery Creator
#==============================================================================
#Usage:
#1.GUI: Open Rox file manager,  rightclick on a directory with images, select
#  [Open With] and then select [lh_img_gallery] to generate the image gallery
#  and open it with your browser.
#2.CLI: You can also open a rxvt terminal and type
#  /root/my-applications/lh_img_gallery/lh_img_gallery your-image-directory-with-full-path
#  to run and view the gallery.
#  eg. /root/my-applications/lh_img_gallery/lh_img_gallery /mnt/sda1/TRAV/tmpcd/CMisc
#==============================================================================
#Jerome Christopher
#www.sqlhtm.com
#==============================================================================
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
