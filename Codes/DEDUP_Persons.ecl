IMPORT $;

ds := $.File_Persons.File;

Sort_ds := SORT(ds,lastname);

OUTPUT(Sort_ds,NAMED('Sorted_lastname'));

Dedup_ds := DEDUP(Sort_ds,LEFT.lastname=RIGHT.lastname);

OUTPUT(Dedup_ds,NAMED('Remove_persons_with_same_lastname'));

Dedup_ds_state := DEDUP(SORT(ds,State),State);

OUTPUT(Dedup_ds_state,NAMED('Remove_persons_with_same_state'));
COUNT(Dedup_ds_state);