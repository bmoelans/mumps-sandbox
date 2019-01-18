; make wordfreq.so && mumps -run "^wfreq"
WFREQ
 k ^Test,^index
 s ^Test("ab")=1
 s ^Test("ba")=2
 w $&wordfreq.windex("^Test","^index")
 w !
 zwr ^index
