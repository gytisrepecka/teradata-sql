-- Convert DECIMAL to VARCHAR without decimal separator
SELECT
	'12' AS IamVarchar
	,CAST(12 AS DECIMAL(12,0)) AS IamDecimal
	,'' || IamDecimal AS IamConcatenated
	,CAST(TRIM(IamDecimal) AS VARCHAR(50)) AS SimplyCasted
	,CAST(CAST(IamDecimal AS FORMAT 'Z(I)') AS VARCHAR(50)) AS CastedWithFormat
;
/*
IamVarchar	IamDecimal	IamConcatenated	SimplyCasted	CastedWithFormat
12	     		12	        12.				      12.		     		12
*/
