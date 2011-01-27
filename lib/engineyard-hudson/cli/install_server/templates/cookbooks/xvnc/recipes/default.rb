#
# Recipe for installing Xvnc
# Found here:  http://en.gentoo-wiki.com/wiki/XVNC_Server
#

execute "link fonts" do
  command "ln -s /usr/share/fonts/ /usr/lib/X11/fonts"
  not_if { FileTest.exists?("/usr/lib/X11/fonts") }
end
execute "link rgb.txt" do
  command "ln -s /usr/share/X11/rgb.txt /usr/lib/X11/rgb.txt"
  not_if { FileTest.exists?("/usr/lib/X11/rgb.txt") }
end
execute "link for getting install to work right" do
  command "ln -s /usr /usr/X11R6"
  not_if { FileTest.exists?("/usr/X11R6") }
end

execute "link for getting install to work right" do
  command 'echo "net-misc/tightvnc server" >> /etc/portage/package.use'
  not_if "grep 'net-misc/tightvnc' /etc/portage/package.use"
end

execute "install tightvnc" do
  command 'emerge tightvnc'
end

execute "link for getting install to work right" do
  command 'echo "media-gfx/imagemagick bzip2 corefonts jpeg jpeg2k openmp perl png q8 svg tiff truetype wmf xml zlib X -djvu -doc -fontconfig -fpx -graphviz -gs -hdri -jbig -lcms -nocxx -openexr -q32 -raw" >> /etc/portage/package.use'
  not_if "grep 'media-gfx/imagemagick' /etc/portage/package.use"
end

execute "install imagemagick" do
  command 'emerge --update --newuse imagemagick'
end
