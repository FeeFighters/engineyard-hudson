#
# Recipe for installing Xvnc
# Found here:  http://en.gentoo-wiki.com/wiki/XVNC_Server
#

execute "link fonts" do
  command "ln -s /usr/share/fonts/ /usr/lib/X11/fonts"
end
execute "link rgb.txt" do
  command "ln -s /usr/share/X11/rgb.txt /usr/lib/X11/rgb.txt"
end
execute "link for getting install to work right" do
  command "ln -s /usr /usr/X11R6"
end

execute "link for getting install to work right" do
  command 'echo "net-misc/tightvnc server" >> /etc/portage/package.use'
  not_if "grep 'tightvnc server' /etc/portage/package.use"
end

package "tightvnc"

