IMPORT $;

ds := $.File_Persons.File;

OUTPUT(ds);

Sort_ds := SORT(ds,firstname,-lastname);

OUTPUT(Sort_ds);