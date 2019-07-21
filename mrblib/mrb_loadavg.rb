# frozen_string_literal: true

class Loadavg # :nodoc:
  attr_reader :a_minute, :five_minutes, :fifteen_minutes
  attr_reader :runnable_entity_count, :exists_entitiy_count, :recent_pid
  def initialize
    raw = File.read('/proc/loadavg').split(' ')
    @a_minute, @five_minutes, @fifteen_minutes = raw[0..2].map(&:to_f)
    @runnable_entity_count, @exists_entity_count = raw[3].split('/').map(&:to_i)
    @recent_pid = raw[4].to_i
  end

  def show
    puts "#{a_nimute} #{five_minutes} #{fifteen_minutes} \
    #{runnable_entitiy_count}/#{exists_entitiy_count} #{recent_pid}"
  end
end
