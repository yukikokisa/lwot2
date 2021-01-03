<div class="account-page">
  <div class="account-page__inner clearfix">
    <div class="account-page__inner--left account-page__header">
      <h2>Create Account</h2>
      <h5>新規アカウントの作成</h5>
      <%= render "nurses/shared/links" %>
    </div>
    <div class="account-page__inner--right user-form">
      <%= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
        <%= render "nurses/shared/error_messages", resource: resource %>
         <div class="field">
          <%= f.label :氏名 %><br />
          <%= f.text_field :name, autofocus: true, autocomplete: "name" %>
        </div>

        <div class="field">
          <%= f.label :社員番号 %><br />
          <%= f.text_field :employee_number, autofocus: true, autocomplete: "employee_number" %>
        </div>

        <div class="field">
          <%= f.label :password %>
          <% if @minimum_password_length %>
          <em>(<%= @minimum_password_length %> 文字以上の半角英数字)</em>
          <% end %><br />
          <%= f.password_field :password, autocomplete: "new-password" %>
        </div>

        <div class="field">
          <em><%= f.label :password%> (確認)</em><br />
          <%= f.password_field :password_confirmation, autocomplete: "new-password" %>
        </div>

        <div class="actions">
          <%= f.submit "Sign up" %>
        </div>
        <% end %>
     </div>
  </div>
</div>
   