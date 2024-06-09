IMPORT $;

ds := $.File_Persons.File;

OUTPUT(ds);

sort_ds := SORT(ds,state,city);

OUTPUT(sort_ds);

rec := RECORD
sort_ds.firstname;
sort_ds.middlename;
sort_ds.lastname;
sort_ds.zip;
sort_ds.street;
sort_ds.city;
sort_ds.state;
UNSIGNED State_Code := 0;
END;

tb := TABLE(sort_ds,rec);

OUTPUT(tb);

rec generate_state_code(rec Le, rec Ri) := TRANSFORM
SELF.State_Code := IF(Le.state=Ri.state,Le.State_code,Le.State_code+1);
Self := Ri;
END;

ite_ds := ITERATE(tb,generate_state_code(LEFT,RIGHT));
OUTPUT(ite_ds);

new_rec := RECORD
ite_ds.State;
ite_ds.State_Code;
UNSIGNED cnt := COUNT(GROUP);
END;

cnt_ds := SORT(TABLE(ite_ds,new_rec,State,State_code),State_code);
OUTPUT(cnt_ds);