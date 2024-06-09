IMPORT $;

ds := $.File_Persons.File;

OUTPUT(ds);

new_rec := RECORD
ds.firstname;
ds.zip;
ds.state;
END;

tb := TABLE(ds,new_rec,firstname,zip,state);

OUTPUT(tb);

new_rec_2 := RECORD
ds.state;
UNSIGNED count_persons := COUNT(GROUP);
END;

tb2 := TABLE(ds,new_rec_2,state);

OUTPUT(tb2);