//1st Question

INTEGER max_val(INTEGER x, INTEGER y) := FUNCTION
RETURN IF(x>y,x,y);
END;

max_val(1000,12);

//2nd Question

STRING IsInRange(INTEGER val, INTEGER from, INTEGER to) := FUNCTION
RETURN IF(val>=from,IF(val<=to,'In Range','More than right limit'),'Less than left limit');
END;

OUTPUT(IsInRange(12,1,10));