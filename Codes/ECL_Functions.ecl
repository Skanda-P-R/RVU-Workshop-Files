IMPORT STD;

INTEGER FirstFunction(INTEGER x) := x+5;

OUTPUT(FirstFunction(5),NAMED('First_Function'));

rec := RECORD
STRING10 word;
UNSIGNED2 no_of_letters;
END;


ds := DATASET([{'a',1},{'quick',5},{'BROWN',5},{'Fox',3},{'Is',2},{'mY',2},{'friend',6}],rec);

DATASET(rec) fun(DATASET(rec) ds) := FUNCTION
 RETURN ds(word='Fox');
END;

OUTPUT(fun(ds),NAMED('Datasets_as_parameter'));

INTEGER DaysBetween(INTEGER from, INTEGER to) := FUNCTION

days := STD.Date.DaysBetween(from,to);
RETURN days;

END;

OUTPUT(DaysBetween(20040318,20240606),NAMED('STD_Functions'));