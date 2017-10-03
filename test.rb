appliation.html.erbのろぐいん

<% if logged_in? %>
<a class="btn btn-primary btn-lg" role="button" href="<% user_path(current_user.id) %>">
  登録情報
</a>
<>
<a class="btn btn-primary btn-lg" role="button" data-method="delete" href="<%= session_path(1) %>">
  ログアウト
</a>
<% else %>
<a class="btn btn-primary btn-lg" role="button" href="<% new_user_path %>">
  登録
</a>
<a class="btn btn-primary btn-lg" role="button" href="<%= new_session_path %>">
  ログイン
</a>
<% end %>


topがめんのりんく


<% if logged_in? %>
<a class="btn btn-primary btn-lg" role="button" href="<%= user_path(current_user.id) %>">
  登録情報
</a>
<a class="btn btn-primary btn-lg" role="button" data-method="delete" href="<%= session_path %>">
  ログアウト
</a>
<% else %>
<a class="btn btn-primary btn-lg" role="button" href="<%= new_user_path %>">
  登録
</a>
<a class="btn btn-primary btn-lg" role="button" href="<%= new_session_path %>">
  ログイン
</a>
<% end %>
