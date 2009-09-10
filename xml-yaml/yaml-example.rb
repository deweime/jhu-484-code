require 'yaml'

h = { "x" => "y", "a" => { 1 => 2, 3 =>4 } }
yaml_str=h.to_yaml
puts yaml_str

obj=YAML.load(yaml_str)
puts obj.inspect
