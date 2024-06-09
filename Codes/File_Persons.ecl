EXPORT File_Persons := MODULE
EXPORT Layout := RECORD
 STRING15 FirstName;
 STRING25 LastName;
 STRING15 MiddleName;
 STRING5 Zip;
 STRING42 Street;
 STRING20 City;
 STRING2 State;
END; 

EXPORT File := DATASET('~rvu::workshop::originalperson',Layout,THOR);
END;