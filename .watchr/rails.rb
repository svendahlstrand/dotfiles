def run(cmd)
  puts(cmd)
  `#{cmd}`
end

def run_test_file(file)
  system('clear')
  result = run(%Q(ruby -I"lib:test" -rubygems #{file}))
  puts result
end

def run_all_tests
  system('clear')
  result = run 'rake test'
  puts result
end

def related_test_files(path)
  Dir['test/**/*.rb'].select { |file| file =~ /#{File.basename(path).split(".").first}_test.rb/ }
end

watch('test/test_helper\.rb') { run_all_tests }
watch('test/.*/.*_test\.rb') { |m| run_test_file(m[0]) }
watch('app/.*/.*\.rb') { |m| related_test_files(m[0]).map {|tf| run_test_file(tf) } }
watch('features/.*/.*\.feature') { run_all_features }

# Ctrl-\
Signal.trap 'QUIT' do
  puts " --- Running all tests ---\n\n"
  run_all_tests
end

# Ctrl-C
Signal.trap 'INT' do
  if @interrupted then
    abort("\n")
  else
    puts "Interrupt a second time to quit"

    @interrupted = true
    Kernel.sleep 1.5
    @interrupted = false

    run_all_tests
  end
end

@interrupted = false

system 'clear'
run_all_tests