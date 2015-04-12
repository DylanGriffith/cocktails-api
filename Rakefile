desc "Bootstrapping for development and running tests"

task :bootstrap do
  ["cocktails-test", "cocktails-development"].each do |db_name|
    sh "createdb #{db_name} || true"
    sh "sequel -m migrate postgres:///#{db_name}"
  end
end

namespace :generate do
  desc 'Generate a timestamped, empty Sequel migration.'
  task :migration, :name do |_, args|
    if args[:name].nil?
      puts 'You must specify a migration name (e.g. rake generate:migration[create_events])!'
      exit false
    end

    content = <<-END.gsub(/^ {6}/, '')
      Sequel.migration do
        change do
        end
      end
    END

    timestamp = Time.now.strftime("%Y%m%d%H%M%S")
    filename = File.join(File.dirname(__FILE__), 'migrate', "#{timestamp}_#{args[:name]}.rb")

    File.write(filename, content)

    puts "Created the migration #{filename}"
  end
end
