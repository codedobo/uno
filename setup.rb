# frozen_string_literal: true

require_relative './index.rb'
class UnoModule

  def join(server, _already)
    send_message "\u001b[96mSet up uno module for #{server.id}..."
    id = server.id
    theme = 'default'
    @client.query("INSERT INTO `uno` VALUES (#{id},'#{theme}',NULL) ON DUPLICATE KEY UPDATE THEME='#{theme}';")
    match_making
    send_message "\u001b[32mSuccessfully set up uno module for #{server.id}!"
  end

  def reload(server)
    send_message "\u001b[96mReloading uno module for server #{server.name}(#{server.id})..."
    match_making
    send_message "\u001b[32mSuccefully reloaded the uno module for the server!"
  end
end
