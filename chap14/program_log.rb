$logger_depth = 0

def log desc, &block
  space = '  '*$logger_depth
  puts "#{space}Beginning #{desc} ..."
  $logger_depth += 1
  result = block.call
  puts "#{space}#{desc} finished, returning #{result}"
  $logger_depth -= 1
end

log "outer block" do
  log "some little block" do
    log "teeny tiny block" do
      "HEY!"
    end
    10 - 5
  end
  log "another block" do
    "I like Thai food"
  end
  1 == 0
end
  