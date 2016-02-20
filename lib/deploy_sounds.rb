# This module inspired by https://github.com/nodanaonlyzuul/Paul-Dix--Thundergod
module DeploySounds
  AUDIO_PLAY_COMMANDS = %w(afplay play)

  def self.play
    AUDIO_PLAY_COMMANDS.each do |command|
      random_file = Dir.glob("#{ENV['HOME']}/.deploy_sounds/*").sample

      unless random_file
        puts "[deploy_sounds] You don't have a ~/.deploy_sounds or it's empty."
        break
      end

      if system("which #{command}")
        `#{command} #{random_file} &`
        break
      end
    end
  end
end
