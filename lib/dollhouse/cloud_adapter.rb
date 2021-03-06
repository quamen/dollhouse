module Dollhouse
  class CloudAdapter
    def initialize
      raise NotImplementedError, %Q{
      Must implement the following methods:

      boot_new_server(name, callback, opts)
      - name is the unique id for the server in this cloud
      - callback is a lambda to be fired_off when that server comes online
      - generally, opts has :machine_id, :ram_size, :data_center, :backup_image_id

      execute(server_name, cmd, opts)

      write_file(server_name, path, content, opts)

      list

    } unless [:boot_new_server, :execute, :write_file, :list].all? { |m| self.class.method_defined? m }
    end
  end
end
