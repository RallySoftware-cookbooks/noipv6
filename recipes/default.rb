#
# Cookbook Name:: noipv6
# Recipe:: default
#
# Copyright 2011,2012 Tehmasp Chaudhri
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

template '/etc/sysconfig/network' do
  source 'network.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

template '/etc/modprobe.d/ipv6.conf' do
  source 'ipv6.conf.erb'
  owner 'root'
  group 'root'
  mode '0440'
end

service 'ip6tables' do
  action [ :stop, :disable ]
end

