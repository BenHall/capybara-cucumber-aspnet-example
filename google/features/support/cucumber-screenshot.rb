#Example taken from http://github.com/aslakhellesoy/cucumber/blob/master/examples/watir/features/support/screenshots.rb

module Screenshots
  if Cucumber::OS_X
    def take_screenshot(file)
      make_directory 'screenshots'
      `screencapture -t png -T 0 screenshots/#{file}.png`
      embed("screenshots/#{file}.png", "image/png")
    end
  elsif Cucumber::WINDOWS
    # http://wtr.rubyforge.org/rdoc/classes/Watir/ScreenCapture.html
    require 'watir/screen_capture'
    include Watir::ScreenCapture
    def embed_screenshot(id)
      screen_capture("#{id}.jpg", true)
      embed("#{id}.jpg", "image/jpeg")
    end
  else # Other platforms...
    def take_screenshot(id)
      STDERR.puts "Sorry - no screenshots on your platform yet."
    end
  end
  
  def make_directory(path)
    Dir.mkdir(path) unless File.exists?(path) && File.directory?(path)
  end
  
end