module DeploySounds
  COMMANDS_TO_TRY = %w[afplay play]

  def self.play
    COMMANDS_TO_TRY.each do |command|
      random_file = Dir.glob("./lib/sounds/*").sample

      if system("which #{command}")
        `#{command} #{random_file} &`
        break
      end
    end
  end
end
