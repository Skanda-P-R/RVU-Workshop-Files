IMPORT $;

MyRec := RECORD
 STRING1 Value1;
 STRING1 Value2;
END;
SomeFile := DATASET([ {'C','G'},
                      {'C','C'},
                      {'A','X'},
                      {'B','G'},
                      {'A','B'}],MyRec);
Val1Sort := SORT(SomeFile,Value1);
Val2Sort := SORT(SomeFile,Value2);

Dedup1 := DEDUP(Val1Sort,LEFT.Value1 = RIGHT.Value1);
/* Result set is:

Value1  Value2
A       X
B       G
C       G

*/
Dedup2 := DEDUP(Val2Sort,LEFT.Value2 = RIGHT.Value2);
/* Result set is:

Value1  Value2
A       B
C       C
C       G
A       X

*/
Dedup3 := DEDUP(Val1Sort,LEFT.Value1 = RIGHT.Value1,RIGHT);
/* Result set is:

Value1  Value2
A       B
B       G
C       C

*/
Dedup4 := DEDUP(Val2Sort,LEFT.Value2 = RIGHT.Value2,RIGHT);
/* Result set is:

Value1  Value2
A       B
C       C
B       G
A       X

*/
OUTPUT(Val1Sort,NAMED('Val1Sort'));
OUTPUT(Dedup1,NAMED('Val1_LEFT'));
OUTPUT(Dedup3,NAMED('Val1_RIGHT'));
OUTPUT(Val2Sort,NAMED('Val2Sort'));
OUTPUT(Dedup2,NAMED('Val2_LEFT'));
OUTPUT(Dedup4,NAMED('Val2_RIGHT'));