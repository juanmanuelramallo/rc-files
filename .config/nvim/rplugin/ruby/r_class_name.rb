require 'neovim'
require 'fileutils'

Neovim.plugin do |plug|
  plug.command(:RClassName) do |nvim|
    lines = nvim.current.buffer.lines.to_a

    # Get all module and class lines
    lines = lines.select { |line| line =~ /\A\s*module|\A\s*class/ }
    # Remove module keyword
    lines = lines.map { |line| line.gsub(/\s*module\s*/, "") }
    # Remove class and inheritance keywords
    lines = lines.map { |line| line.gsub(/\s*class\s*(\w+)(\s*<\s*\w+)?/, "\\1") }
    # Join with ::
    lines = lines.join("::")

    nvim.evaluate("setreg('*', '#{lines}')")
  end
end
