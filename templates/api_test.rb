require File.expand_path('../../../../../../test/test_helper', __FILE__)
<% required_params = [] %>
<% @api_params.each do |param| %>
  <%required_params << param if  param['required'] %>
<% end %>
module Aliyun::Openapi::<%= @name_space %>
  class <%= @api_name_camel_case %>Test < Minitest::Test
    def test_<%=@api_name%>_<%= @version.delete('-')%> do
      Core::ApiDSL.client.<%= @product %>(version: '<%= @version %>').<%= @api_name %>() do |response|
      end
    end
  end
end

