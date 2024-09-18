python
import argparse

class RedirOutput(gdb.Command):
    def __init__(self):
        super().__init__("rdr", gdb.COMMAND_USER, gdb.COMPLETE_COMMAND)

    def invoke(self, argstr, from_tty):
        parser = argparse.ArgumentParser()
        parser.add_argument('command', nargs='+')
        parser.add_argument('-o', "--outfile", required=True, help="output file")

        nm = parser.parse_args(argstr.split())

        with open(nm.outfile, "a") as output_file:
            try:
                output_file.write(gdb.execute(' '.join(nm.command), to_string=True))
            except Exception as e:
                print(str(e))

RedirOutput()
end

define kek
pipe bt | grep engine >> bt.txt
rdr p valid_templates.size() -o ./size.txt
rdr p "$$$" -o ./bt.txt
continue
end
