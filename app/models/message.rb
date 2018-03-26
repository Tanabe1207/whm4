class Message < ApplicationRecord

  after_create_commit{MessageBroadcastjob.perform_later self}

end
