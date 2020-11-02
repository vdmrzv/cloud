import yaml
import gzip

def read_yaml(path):
    ''' read info.yml.gz file'''

    with gzip.open(path,'r') as f:
        byte_list = f.readlines()

    str_list = [x.decode('utf-8') for x in byte_list]
    str_list[0] = '%YAML 1.0\n'
    good_lines = "".join(str_list)
    good_lines = good_lines.replace(':', ' : ')
    yaml_data = yaml.load(good_lines)

    if yaml_data is None:
        print ('ERROR! Empty YAML file', path)
        return None

    return yaml_data
