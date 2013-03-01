#
# Cookbook Name:: autox
# Recipe:: default

package "x11vnc" do
  action :install
end

package "xvfb" do
  action :install
end

package "vnc4server" do
  action :install
end

package "openssh-server" do
  action :install
end

package "sudo" do
  action :install
end

cookbook_file "/usr/local/bin/x11vnc" do
  source "x11vnc"
  owner "root"
  group "root"
  mode 00755
end

cookbook_file "/usr/local/bin/x11vnc_self_password_check" do
  source "x11vnc_self_password_check"
  owner "root"
  group "root"
  mode 00755
end

cookbook_file "/etc/sudoers.d/sudo_bin_true_as_group_nobody" do
  source "sudo_bin_true_as_group_nobody"
  owner "root"
  group "root"
  mode 00440
end

