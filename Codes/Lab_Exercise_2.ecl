IMPORT $,STD;

// 1st Question
ds := $.File_Persons.File;

rec1 := RECORD
ds.lastname;
UNSIGNED count_persons := COUNT(GROUP);
END;

tb1 := TABLE(ds,rec1,lastname);

OUTPUT(tb1);

// 2nd Question

rec2 := RECORD
UNSIGNED ID := 0;
ds.firstname;
ds.lastname;
ds.middlename;
ds.zip;
ds.street;
ds.city;
ds.state;
STRING Name := '';
STRING Address := '';
END;

tb2 := TABLE(ds,rec2);

rec2 merge_name(rec2 Le, INTEGER Cnt) := TRANSFORM
SELF.ID := Cnt;
SELF.Name := STD.Str.CleanSpaces(Le.firstname + ' ' + Le.middlename + ' ' + Le.lastname);
SELF.Address := STD.Str.CleanSpaces(Le.street + ', ' + Le.city + ', ' + Le.state + ', ' + Le.zip);
SELF := Le;
END;

new_ds := PROJECT(tb2,merge_name(LEFT,COUNTER));

new_rec := RECORD
new_ds.ID;
new_ds.Name;
new_ds.Address;
END;

new_tb := TABLE(new_ds,new_rec);
OUTPUT(new_tb);