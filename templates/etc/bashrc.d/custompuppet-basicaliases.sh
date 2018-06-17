# THIS FILE IS MANAGED BY PUPPET
# <%= file %>

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#Machine specific aliases
<% if @aliases.is_a?(Hash) -%>
<%   @aliases.each do |name, value| -%>
<%     if value != nil -%>
alias <%= name%>='<%= value %>'
<%    else -%>
unalias <%= name%>
<%     end -%>
<%   end -%>
<% end -%>
<% if @aliases.is_a?(Array) -%>
<%   @aliases.each do |name| -%>
alias <%= name %>
<%   end -%>
<% end -%>

