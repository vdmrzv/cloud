#source ~/stl-views.gdb
#source ~/redirect-output.gdb

set disassembly-flavor intel
set startup-quietly on
set confirm off
set max-value-size unlimited
set height 1000
set print element 0
set auto-load safe-path /

# C++ related beautifiers (optional)
set print pretty on
set print object on
set print static-members on
set print vtbl on
set print demangle on
set demangle-style gnu-v3
set print sevenbit-strings off
