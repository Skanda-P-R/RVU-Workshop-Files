IMPORT $,STD;

ds := $.File_Persons.File;

OUTPUT(ds,NAMED('Original_Dataset'));

rec := RECORD
UNSIGNED ID := 0;
ds.firstname;
ds.lastname;
ds.middlename;
ds.zip;
ds.street;
ds.city;
ds.state;
STRING Address := '';
END;

tb := TABLE(ds,rec);

OUTPUT(tb,NAMED('TAble_Adding_new_columns'));

rec merge_address(rec Le, INTEGER Cnt) := TRANSFORM
SELF.ID := Cnt;
SELF.Address := STD.Str.CleanSpaces(Le.street + ', ' + Le.city + ', ' + Le.state + ', ' + Le.zip);
SELF := Le;
END;

new_ds := PROJECT(tb,merge_address(LEFT,COUNTER));
OUTPUT(new_ds,NAMED('PROJECT_implementation'));

new_rec := RECORD
new_ds.ID;
new_ds.firstname;
new_ds.lastname;
new_ds.middlename;
new_ds.Address;
END;

new_tb := TABLE(new_ds,new_rec);
OUTPUT(new_tb,NAMED('Final_Table'));