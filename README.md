事前準備、textコントローラーのルーティング、textコントローラー
のアクションの定義は終了!
最後にgit push -u origin masterでのプッシュを忘れない!
----------------------------1日目

usersモデルを作成してdeviceでのログイン設定

textモデルとusersモデルもアソシエーションを定義して、
----------------------------2日目

なぜかDBに保存されない！！！

あとは、html,cssを書きまくる！

デバックしてend

 <li>
        <%= link_to "詳細", "/text/#{text.id}", method: :get %>
      </li>
      <li>
          <%= link_to '編集', "/text/#{text.id}/edit ", method: :get %>
      </li>
      <li>
          <%= link_to '削除', "/text/#{text.id}", method: :delete %>
      </li>