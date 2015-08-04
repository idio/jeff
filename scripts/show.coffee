# Description:
#   Tiny plugin to maintain syntax compatibility with a custom script
#   that has been replaced by hubot-push.
#
# Configuration:
#   None
#
# Author:
#   Mal Graty

{TextMessage} = require 'hubot'

module.exports = (robot) ->
  robot.respond /show (.*) on ([A-Za-z0-9]*)/i, (msg) ->
    payload = new TextMessage \
      msg.message.user,
      "#{robot.name}: push #{msg.match[1]} to /#{msg.match[2]}"
    robot.receive payload
