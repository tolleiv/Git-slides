task default: :start

@pid_file='server.pid'

desc "Bring up a demo server"
task :start do
    unless File.exist?(@pid_file)
        @pid = Process.spawn(
            'ruby -run -e httpd . -p 8000',
           in: :close
        )
	File.open(@pid_file, 'w') {|f| f.write(@pid.to_s) } 
        sleep 1
    end
end

desc "Stop the demo server"
task :stop do
    if File.exist?(@pid_file)
	File.delete(@pid_file)
        Process.kill("TERM", File.read(@pid_file).to_i)
    end
end

