IMPORT $;

MyRec := RECORD
 STRING1 Value1;
 STRING1 Value2;
END;

SomeFile := GROUP(DATASET([ {'C','G'},
                            {'C','C'},
                            {'A','X'},
                            {'B','G'},
                            {'A','B'}],MyRec),TRUE);
                            
Dedup1 := DEDUP(SomeFile,
 LEFT.Value2 IN ['G','C','X'] AND
 RIGHT.Value2 IN ['X','B','C'] ,ALL);
 
/*
Result set is:

Value1  Value2
C       G
B       G

*/

Dedup2 := DEDUP(SomeFile,
 LEFT.Value2 IN ['G','C'] AND
 RIGHT.Value2 IN ['X','B'] ,ALL);
 
// {'C','G'},
// {'C','C'},
// {'A','X'},
// {'B','G'},
// {'A','B'} 
 
/* Result set is:

Value1  Value2
C       G
C       C
B       G

*/

Dedup3 := DEDUP(SomeFile,
 LEFT.Value2 IN ['X','B'] AND
 RIGHT.Value2 IN ['G','C'],ALL);
 
// {'C','G'},
// {'C','C'},
// {'A','X'},
// {'B','G'},
// {'A','B'} 
 
/* 
Result set is:

Value1  Value2
A       X
A       B 

*/
 
OUTPUT(Dedup1);
OUTPUT(Dedup2);
OUTPUT(Dedup3);