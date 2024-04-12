-- DROP TABLE IF EXISTS CROP_DATA;
CREATE TABLE CROP_DATA (
	Crop_State VARCHAR(100),
	Crop VARCHAR(35),
	Crop_Year SMALLINT, 
	Yield DECIMAL);

SELECT * FROM CROP_DATA;

CREATE TABLE RAIN_DATA(
	State VARCHAR(100),
	Year SMALLINT,
	JAN DECIMAL,
	FEB DECIMAL,
	MAR DECIMAL,
	APR DECIMAL,
	MAY DECIMAL,
	JUN DECIMAL,
	JUL DECIMAL,
	AUG DECIMAL,
	SEP DECIMAL,
	OCT DECIMAL,
	NOV DECIMAL,
	DEC DECIMAL,
	ANNUAL DECIMAL,
	LATITUDE DECIMAL,
	LONGITUDE DECIMAL
	);

SELECT * FROM RAIN_DATA;

SELECT CROP_DATA.crop, CROP_DATA.yield, RAIN_DATA.state, RAIN_DATA.year, RAIN_DATA.jan, RAIN_DATA.feb, RAIN_DATA.mar, RAIN_DATA.apr, RAIN_DATA.may, RAIN_DATA.jun, RAIN_DATA.jul, RAIN_DATA.aug, RAIN_DATA.sep, RAIN_DATA.oct, RAIN_DATA.nov, RAIN_DATA.dec, RAIN_DATA.annual, RAIN_DATA.latitude, RAIN_DATA.longitude FROM CROP_DATA
INNER JOIN RAIN_DATA
	ON ((RAIN_DATA.YEAR = CROP_DATA.CROP_YEAR)
	   AND (RAIN_DATA.STATE = CROP_DATA.CROP_STATE));