./cfg_fuzzball -linux-syscalls -trace-syscalls -trace-stopping -check-condition-at 0x08048933:'mem[R_EBP:reg32_t - 12:reg32_t]:reg32_t == 7:reg32_t' -fuzz-start-addr 0x080489d1 -trace-assigns-string -trace-iterations -coverage-stats -time-stats -fuzz-end-addr 0x08048937 ./mp-bad-mylibc -stp-path ./stp -skip-call-addr 0x08048668=0 -symbolic-cstring 0xbffffd3e+29 -cfg f1.cg -target-addr 0x08048933 -loop-weight 0x08048aca=20.0 -- ./mp-bad-mylibc pathfile.init