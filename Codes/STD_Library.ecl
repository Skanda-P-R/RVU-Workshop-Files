IMPORT STD;

// String Handling Functions

// A := STD.Str.CleanSpaces('  ABCDE         ABCDE                     ');
// OUTPUT(A,NAMED('CleanSpaces'));

// B := STD.Str.Contains('the quick brown fox jumps over the lazy dog', 'ABCdefghijklmnopqrstuvwxyz', true); // source, pattern, ignore case
// C := STD.Str.Contains('the speedy ochre vixen leapt over the indolent retriever', 'abcdefghijklmnopqrstuvwxyz', false); // z is missing

// OUTPUT(B,NAMED('Contains_1'));
// OUTPUT(C,NAMED('Contains_2'));

// str1 := 'an apple a day keeps the doctor away';
// str2 := 'an|apple|a|day|keeps|the|doctor|away';

// OUTPUT(STD.Str.CountWords(str1,' '),NAMED('CountWords_1'));
// OUTPUT(STD.Str.CountWords(str2,'|'),NAMED('CountWords_2')); 

// OUTPUT(STD.STr.SplitWords(str1,' '),NAMED('SplitWords_1'));
// OUTPUT(STD.STr.SplitWords(str2,'|'),NAMED('SplitWords_2'));


// OUTPUT(STD.STr.EndsWith('a word away','away'),NAMED('EndsWith_1')); 
// OUTPUT(STD.STr.EndsWith('a word a way','away'),NAMED('EndsWith_2')); 

// OUTPUT(STD.Str.ExcludeNthWord('The quick brown fox',2),NAMED('ExcludeNthWord'));

// OUTPUT(STD.Str.Extract('AB,CD,,G,E',1),NAMED('Extract_1')); 
// OUTPUT(STD.Str.Extract('AB,CD,,G,E',3),NAMED('Extract_3'));
// OUTPUT(STD.Str.Extract('AB,CD,,G,E',6),NAMED('Extract_6'));
// OUTPUT(STD.Str.Extract('AB,CD,,G,E',0),NAMED('Extract_0'));

// OUTPUT(STD.Str.FindCount('ABCDE', 'BC'),NAMED('FindCount_BC'));
// OUTPUT(STD.Str.FindCount('ABCDEABCDE', 'BC'),NAMED('FindCount_BC_2'));
// OUTPUT(STD.Str.FindCount('', 'BD'),NAMED('FindCount_BD'));

// OUTPUT(STD.Str.Find('ABCDE', 'BC',1),NAMED('Find_BC_1st_Occurance'));
// OUTPUT(STD.Str.Find('ABCDEABCDE', 'BC', 2),NAMED('Find_BC_2nd_Occurance'));
// OUTPUT(STD.Str.Find('', 'BD', 1),NAMED('Find_BD_1st_Occurance'));

// OUTPUT(STD.Str.FindReplace('ABCDE ABCDE', 'BC','XY'),NAMED('FindReplace'));

// OUTPUT(STD.Str.Reverse('ABCDE'),NAMED('Reverse'));

// OUTPUT(STD.Str.ToLowerCase('THE QUICK BROWN FOX'),NAMED('ToLowerCase'));
// OUTPUT(STD.Str.ToUpperCase('the quick brown fox'),NAMED('ToUpperCase'));
// OUTPUT(STD.Str.ToTitleCase('the quick brown fox'),NAMED('ToTitleCase'));



// Date and Time Handling Functions

// A record stucture with the different elements separated out.
Date_rec := RECORD
 INTEGER2 year;
 UNSIGNED1 month;
 UNSIGNED1 day;
END;

//An unsigned number holding a date in the decimal form YYYYMMDD.
Date_t := UNSIGNED4;


// A record structure with the different time elements separated out.
Time_rec := RECORD
 UNSIGNED1 hour;
 UNSIGNED1 minute;
 UNSIGNED1 second;
END;

// An unsigned number holding a time of day in the decimal form HHMMDD.
Time_t := UNSIGNED3;

// OUTPUT(STD.Date.Today(),NAMED('Today'));
// OUTPUT(STD.Date.Year(20240606),NAMED('Year'));
// OUTPUT(STD.Date.Month(20240606),NAMED('Month'));
// OUTPUT(STD.Date.Day(20240606),NAMED('Day'));

// MyTime := STD.Date.CurrentTime();
// OUTPUT(MyTime,NAMED('CurrentTime'));
// OUTPUT(STD.Date.Hour(MyTime),NAMED('Hour'));
// OUTPUT(STD.Date.Minute(MyTime),NAMED('Minute'));
// OUTPUT(STD.Date.Second(MyTime),NAMED('Second'));

// Year := 2020;
// OUTPUT(STD.Date.IsLeapYear(Year),NAMED('IsLeapYear'));
// OUTPUT(STD.Date.IsDateLeapYear(20240606),NAMED('IsDateLeapYear'));

// OUTPUT(STD.Date.IsValidDate(19990230),NAMED('IsValidDate1'));
// OUTPUT(STD.Date.IsValidDate(19990228),NAMED('IsValidDate2'));

// D1 := STD.Date.FromStringToDate('19720607', '%Y%m%d');
// OUTPUT(D1);
// D2 := STD.Date.FromStringToDate('06071972', '%m%d%Y');
// OUTPUT(D2);
// D3 := STD.Date.FromStringToDate('4/29/1974', '%m/%d/%Y');
// OUTPUT(D3);
// D4:= STD.Date.FromStringToDate('29/4/1974', '%d/%m/%Y');
// OUTPUT(D4);
// D5 := STD.Date.FromStringToDate('21-Mar-1954', '%d-%b-%Y');
// OUTPUT(D5);

// OUTPUT(STD.Date.DaysBetween(19720607,STD.Date.Today()),NAMED('DaysBetween'));