CREATE TABLE snazzy_kangaroo_consulting_employees(
	"firstName"		text,
	"lastName"		text,
	"employeeId"	integer,
	"email"			text,
	"companyId"		integer,
	"companyName"	text,
	"positionTitle"	text,
	"startDate"		date,
	"isManager"		boolean,
	"password"		text
);

with customer_json(doc) as (values('[ {
  "firstName" : "Lou",
  "lastName" : "Livingston",
  "employeeId" : 1,
  "email" : "Lou_Livingston@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "positionTitle" : "CEO",
  "startDate" : "2018-09-22",
  "isManager" : true,
  "password" : "livingstonlo"
}, {
  "firstName" : "Nicky",
  "lastName" : "Sellers",
  "employeeId" : 2,
  "email" : "Nicky_Sellers@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 1,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2016-05-04",
  "isManager" : true,
  "password" : "sellersni"
}, {
  "firstName" : "Patti",
  "lastName" : "Ellis",
  "employeeId" : 3,
  "email" : "Patti_Ellis@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 2,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2001-01-26",
  "isManager" : true,
  "password" : "ellispa"
}, {
  "firstName" : "Geneva",
  "lastName" : "Eaton",
  "employeeId" : 4,
  "email" : "Geneva_Eaton@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 1,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2010-12-12",
  "isManager" : true,
  "password" : "eatonge"
}, {
  "firstName" : "Hollie",
  "lastName" : "Cantu",
  "employeeId" : 5,
  "email" : "Hollie_Cantu@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2011-03-16",
  "isManager" : true,
  "password" : "cantuho"
}, {
  "firstName" : "Misty",
  "lastName" : "Cantu",
  "employeeId" : 6,
  "email" : "Misty_Cantu@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 1,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2011-12-23",
  "isManager" : true,
  "password" : "cantumi"
}, {
  "firstName" : "Amy",
  "lastName" : "Vazquez",
  "employeeId" : 7,
  "email" : "Amy_Vazquez@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2014-07-02",
  "isManager" : true,
  "password" : "vazquezam"
}, {
  "firstName" : "Sammy",
  "lastName" : "Salas",
  "employeeId" : 8,
  "email" : "Sammy_Salas@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Engineering Manager",
  "startDate" : "1999-08-06",
  "isManager" : true,
  "password" : "salassa"
}, {
  "firstName" : "Gale",
  "lastName" : "Dorsey",
  "employeeId" : 9,
  "email" : "Gale_Dorsey@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 1,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2018-03-11",
  "isManager" : true,
  "password" : "dorseyga"
}, {
  "firstName" : "Selma",
  "lastName" : "Hood",
  "employeeId" : 10,
  "email" : "Selma_Hood@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 8,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2015-12-01",
  "isManager" : true,
  "password" : "hoodse"
}, {
  "firstName" : "Kim",
  "lastName" : "Callahan",
  "employeeId" : 11,
  "email" : "Kim_Callahan@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 10,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2000-06-06",
  "isManager" : true,
  "password" : "callahanki"
}, {
  "firstName" : "Maryellen",
  "lastName" : "Wade",
  "employeeId" : 12,
  "email" : "Maryellen_Wade@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "Engineering Manager",
  "startDate" : "1992-03-31",
  "isManager" : true,
  "password" : "wadema"
}, {
  "firstName" : "Mollie",
  "lastName" : "Wood",
  "employeeId" : 13,
  "email" : "Mollie_Wood@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 7,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2002-10-21",
  "isManager" : true,
  "password" : "woodmo"
}, {
  "firstName" : "Ivory",
  "lastName" : "Dixon",
  "employeeId" : 14,
  "email" : "Ivory_Dixon@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "Engineering Manager",
  "startDate" : "1992-05-20",
  "isManager" : true,
  "password" : "dixoniv"
}, {
  "firstName" : "Ethel",
  "lastName" : "Ashley",
  "employeeId" : 15,
  "email" : "Ethel_Ashley@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Engineering Manager",
  "startDate" : "1991-07-22",
  "isManager" : true,
  "password" : "ashleyet"
}, {
  "firstName" : "Cindy",
  "lastName" : "Beasley",
  "employeeId" : 16,
  "email" : "Cindy_Beasley@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2014-12-18",
  "isManager" : true,
  "password" : "beasleyci"
}, {
  "firstName" : "Ethan",
  "lastName" : "Reilly",
  "employeeId" : 17,
  "email" : "Ethan_Reilly@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 2,
  "positionTitle" : "Engineering Manager",
  "startDate" : "2016-04-11",
  "isManager" : true,
  "password" : "reillyet"
}, {
  "firstName" : "Laura",
  "lastName" : "Gallagher",
  "employeeId" : 18,
  "email" : "Laura_Gallagher@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "1998-03-03",
  "isManager" : false,
  "password" : "gallagherla"
}, {
  "firstName" : "Catherine",
  "lastName" : "Tanner",
  "employeeId" : 19,
  "email" : "Catherine_Tanner@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 16,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "2006-01-16",
  "isManager" : false,
  "password" : "tannerca"
}, {
  "firstName" : "Patty",
  "lastName" : "Ortiz",
  "employeeId" : 20,
  "email" : "Patty_Ortiz@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 14,
  "positionTitle" : "Tech Lead",
  "startDate" : "1992-05-29",
  "isManager" : false,
  "password" : "ortizpa"
}, {
  "firstName" : "Ramona",
  "lastName" : "Cowan",
  "employeeId" : 21,
  "email" : "Ramona_Cowan@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 6,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2012-07-28",
  "isManager" : false,
  "password" : "cowanra"
}, {
  "firstName" : "Maria",
  "lastName" : "Tucker",
  "employeeId" : 22,
  "email" : "Maria_Tucker@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 17,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1997-02-04",
  "isManager" : false,
  "password" : "tuckerma"
}, {
  "firstName" : "Ronny",
  "lastName" : "Haas",
  "employeeId" : 23,
  "email" : "Ronny_Haas@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2000-01-23",
  "isManager" : false,
  "password" : "haasro"
}, {
  "firstName" : "Buck",
  "lastName" : "Espinoza",
  "employeeId" : 24,
  "email" : "Buck_Espinoza@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Software Architect",
  "startDate" : "1991-01-22",
  "isManager" : false,
  "password" : "espinozabu"
}, {
  "firstName" : "Phoebe",
  "lastName" : "Ramsey",
  "employeeId" : 25,
  "email" : "Phoebe_Ramsey@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 11,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "2004-10-16",
  "isManager" : false,
  "password" : "ramseyph"
}, {
  "firstName" : "Bruce",
  "lastName" : "Richards",
  "employeeId" : 26,
  "email" : "Bruce_Richards@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 14,
  "positionTitle" : "Tech Lead",
  "startDate" : "1990-07-24",
  "isManager" : false,
  "password" : "richardsbr"
}, {
  "firstName" : "Marjorie",
  "lastName" : "Macias",
  "employeeId" : 27,
  "email" : "Marjorie_Macias@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 7,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2004-02-18",
  "isManager" : false,
  "password" : "maciasma"
}, {
  "firstName" : "Dane",
  "lastName" : "Webster",
  "employeeId" : 28,
  "email" : "Dane_Webster@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "1999-08-07",
  "isManager" : false,
  "password" : "websterda"
}, {
  "firstName" : "Jules",
  "lastName" : "Boyer",
  "employeeId" : 29,
  "email" : "Jules_Boyer@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Tech Lead",
  "startDate" : "2015-03-06",
  "isManager" : false,
  "password" : "boyerju"
}, {
  "firstName" : "Sara",
  "lastName" : "Hoover",
  "employeeId" : 30,
  "email" : "Sara_Hoover@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 7,
  "positionTitle" : "Tech Lead",
  "startDate" : "2004-12-09",
  "isManager" : false,
  "password" : "hooversa"
}, {
  "firstName" : "Orval",
  "lastName" : "Juarez",
  "employeeId" : 31,
  "email" : "Orval_Juarez@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 6,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "1992-07-07",
  "isManager" : false,
  "password" : "juarezor"
}, {
  "firstName" : "Roberta",
  "lastName" : "Mccarty",
  "employeeId" : 32,
  "email" : "Roberta_Mccarty@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "2000-07-19",
  "isManager" : false,
  "password" : "mccartyro"
}, {
  "firstName" : "Rich",
  "lastName" : "Hodges",
  "employeeId" : 33,
  "email" : "Rich_Hodges@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 12,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "1993-01-17",
  "isManager" : false,
  "password" : "hodgesri"
}, {
  "firstName" : "Bennett",
  "lastName" : "Adkins",
  "employeeId" : 34,
  "email" : "Bennett_Adkins@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 16,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2002-07-08",
  "isManager" : false,
  "password" : "adkinsbe"
}, {
  "firstName" : "Sandy",
  "lastName" : "Dickson",
  "employeeId" : 35,
  "email" : "Sandy_Dickson@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 8,
  "positionTitle" : "Tech Lead",
  "startDate" : "2006-05-18",
  "isManager" : false,
  "password" : "dicksonsa"
}, {
  "firstName" : "Jerri",
  "lastName" : "Dominguez",
  "employeeId" : 36,
  "email" : "Jerri_Dominguez@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 7,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2016-05-01",
  "isManager" : false,
  "password" : "dominguezje"
}, {
  "firstName" : "Claudette",
  "lastName" : "Collins",
  "employeeId" : 37,
  "email" : "Claudette_Collins@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 16,
  "positionTitle" : "Software Engineer I",
  "startDate" : "1995-01-09",
  "isManager" : false,
  "password" : "collinscl"
}, {
  "firstName" : "Mandy",
  "lastName" : "Higgins",
  "employeeId" : 38,
  "email" : "Mandy_Higgins@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "1994-02-02",
  "isManager" : false,
  "password" : "higginsma"
}, {
  "firstName" : "Gertrude",
  "lastName" : "Rowland",
  "employeeId" : 39,
  "email" : "Gertrude_Rowland@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 16,
  "positionTitle" : "Software Architect",
  "startDate" : "2010-08-29",
  "isManager" : false,
  "password" : "rowlandge"
}, {
  "firstName" : "Mose",
  "lastName" : "Mckenzie",
  "employeeId" : 40,
  "email" : "Mose_Mckenzie@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 10,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "1998-06-13",
  "isManager" : false,
  "password" : "mckenziemo"
}, {
  "firstName" : "Chadwick",
  "lastName" : "Glass",
  "employeeId" : 41,
  "email" : "Chadwick_Glass@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "Software Engineer I",
  "startDate" : "1994-03-28",
  "isManager" : false,
  "password" : "glassch"
}, {
  "firstName" : "Barbra",
  "lastName" : "Flynn",
  "employeeId" : 42,
  "email" : "Barbra_Flynn@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "1990-06-19",
  "isManager" : false,
  "password" : "flynnba"
}, {
  "firstName" : "Johanna",
  "lastName" : "Hoover",
  "employeeId" : 43,
  "email" : "Johanna_Hoover@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 15,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2012-07-21",
  "isManager" : false,
  "password" : "hooverjo"
}, {
  "firstName" : "Buck",
  "lastName" : "Powers",
  "employeeId" : 44,
  "email" : "Buck_Powers@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 17,
  "positionTitle" : "Software Engineer II",
  "startDate" : "2016-03-04",
  "isManager" : false,
  "password" : "powersbu"
}, {
  "firstName" : "Camille",
  "lastName" : "Strickland",
  "employeeId" : 45,
  "email" : "Camille_Strickland@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Software Engineer II",
  "startDate" : "2006-02-01",
  "isManager" : false,
  "password" : "stricklandca"
}, {
  "firstName" : "Miguel",
  "lastName" : "Campbell",
  "employeeId" : 46,
  "email" : "Miguel_Campbell@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "2016-02-22",
  "isManager" : false,
  "password" : "campbellmi"
}, {
  "firstName" : "Brendon",
  "lastName" : "Leblanc",
  "employeeId" : 47,
  "email" : "Brendon_Leblanc@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 12,
  "positionTitle" : "Tech Lead",
  "startDate" : "1994-07-07",
  "isManager" : false,
  "password" : "leblancbr"
}, {
  "firstName" : "Violet",
  "lastName" : "Fry",
  "employeeId" : 48,
  "email" : "Violet_Fry@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 6,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2007-06-08",
  "isManager" : false,
  "password" : "fryvi"
}, {
  "firstName" : "Cordell",
  "lastName" : "Wagner",
  "employeeId" : 49,
  "email" : "Cordell_Wagner@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 17,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "1997-08-24",
  "isManager" : false,
  "password" : "wagnerco"
}, {
  "firstName" : "Rosalyn",
  "lastName" : "Bennett",
  "employeeId" : 50,
  "email" : "Rosalyn_Bennett@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Software Architect",
  "startDate" : "2014-02-10",
  "isManager" : false,
  "password" : "bennettro"
}, {
  "firstName" : "Trenton",
  "lastName" : "Perkins",
  "employeeId" : 51,
  "email" : "Trenton_Perkins@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 11,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2011-10-05",
  "isManager" : false,
  "password" : "perkinstr"
}, {
  "firstName" : "Edwina",
  "lastName" : "Myers",
  "employeeId" : 52,
  "email" : "Edwina_Myers@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 2,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2000-03-30",
  "isManager" : false,
  "password" : "myersed"
}, {
  "firstName" : "Patti",
  "lastName" : "Sparks",
  "employeeId" : 53,
  "email" : "Patti_Sparks@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 2,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1998-01-24",
  "isManager" : false,
  "password" : "sparkspa"
}, {
  "firstName" : "Olivia",
  "lastName" : "Todd",
  "employeeId" : 54,
  "email" : "Olivia_Todd@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2008-10-28",
  "isManager" : false,
  "password" : "toddol"
}, {
  "firstName" : "Porfirio",
  "lastName" : "Case",
  "employeeId" : 55,
  "email" : "Porfirio_Case@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "2012-12-22",
  "isManager" : false,
  "password" : "casepo"
}, {
  "firstName" : "Pansy",
  "lastName" : "Henderson",
  "employeeId" : 56,
  "email" : "Pansy_Henderson@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 15,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2003-09-06",
  "isManager" : false,
  "password" : "hendersonpa"
}, {
  "firstName" : "Ira",
  "lastName" : "Pollard",
  "employeeId" : 57,
  "email" : "Ira_Pollard@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 8,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "1998-06-22",
  "isManager" : false,
  "password" : "pollardir"
}, {
  "firstName" : "Corina",
  "lastName" : "Lewis",
  "employeeId" : 58,
  "email" : "Corina_Lewis@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 8,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1993-01-09",
  "isManager" : false,
  "password" : "lewisco"
}, {
  "firstName" : "Ruthie",
  "lastName" : "Mclean",
  "employeeId" : 59,
  "email" : "Ruthie_Mclean@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1995-05-15",
  "isManager" : false,
  "password" : "mcleanru"
}, {
  "firstName" : "Raymond",
  "lastName" : "Galloway",
  "employeeId" : 60,
  "email" : "Raymond_Galloway@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Software Engineer II",
  "startDate" : "2008-11-09",
  "isManager" : false,
  "password" : "gallowayra"
}, {
  "firstName" : "Elden",
  "lastName" : "Mathews",
  "employeeId" : 61,
  "email" : "Elden_Mathews@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1994-05-20",
  "isManager" : false,
  "password" : "mathewsel"
}, {
  "firstName" : "Nannie",
  "lastName" : "Owen",
  "employeeId" : 62,
  "email" : "Nannie_Owen@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Software Architect",
  "startDate" : "1990-07-20",
  "isManager" : false,
  "password" : "owenna"
}, {
  "firstName" : "Marlon",
  "lastName" : "Horton",
  "employeeId" : 63,
  "email" : "Marlon_Horton@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 10,
  "positionTitle" : "Software Engineer I",
  "startDate" : "1992-08-19",
  "isManager" : false,
  "password" : "hortonma"
}, {
  "firstName" : "Jermaine",
  "lastName" : "Ali",
  "employeeId" : 64,
  "email" : "Jermaine_Ali@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Software Architect",
  "startDate" : "1998-09-27",
  "isManager" : false,
  "password" : "alije"
}, {
  "firstName" : "Cliff",
  "lastName" : "Baker",
  "employeeId" : 65,
  "email" : "Cliff_Baker@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 10,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2006-04-30",
  "isManager" : false,
  "password" : "bakercl"
}, {
  "firstName" : "Delores",
  "lastName" : "Brady",
  "employeeId" : 66,
  "email" : "Delores_Brady@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2010-07-04",
  "isManager" : false,
  "password" : "bradyde"
}, {
  "firstName" : "Essie",
  "lastName" : "Coffey",
  "employeeId" : 67,
  "email" : "Essie_Coffey@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 2,
  "positionTitle" : "Software Architect",
  "startDate" : "2011-06-10",
  "isManager" : false,
  "password" : "coffeyes"
}, {
  "firstName" : "Shannon",
  "lastName" : "Flores",
  "employeeId" : 68,
  "email" : "Shannon_Flores@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 11,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2015-08-02",
  "isManager" : false,
  "password" : "floressh"
}, {
  "firstName" : "Belinda",
  "lastName" : "Clay",
  "employeeId" : 69,
  "email" : "Belinda_Clay@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2000-11-25",
  "isManager" : false,
  "password" : "claybe"
}, {
  "firstName" : "Guadalupe",
  "lastName" : "Griffin",
  "employeeId" : 70,
  "email" : "Guadalupe_Griffin@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 8,
  "positionTitle" : "Software Engineer II",
  "startDate" : "2008-03-04",
  "isManager" : false,
  "password" : "griffingu"
}, {
  "firstName" : "Faye",
  "lastName" : "Pope",
  "employeeId" : 71,
  "email" : "Faye_Pope@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "1996-07-22",
  "isManager" : false,
  "password" : "popefa"
}, {
  "firstName" : "Genaro",
  "lastName" : "Curry",
  "employeeId" : 72,
  "email" : "Genaro_Curry@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "Software Engineer II",
  "startDate" : "2015-08-26",
  "isManager" : false,
  "password" : "curryge"
}, {
  "firstName" : "Alexis",
  "lastName" : "Hunt",
  "employeeId" : 73,
  "email" : "Alexis_Hunt@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Software Architect",
  "startDate" : "1996-08-12",
  "isManager" : false,
  "password" : "huntal"
}, {
  "firstName" : "Issac",
  "lastName" : "Bradford",
  "employeeId" : 74,
  "email" : "Issac_Bradford@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 11,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "2002-11-04",
  "isManager" : false,
  "password" : "bradfordis"
}, {
  "firstName" : "Kate",
  "lastName" : "Clay",
  "employeeId" : 75,
  "email" : "Kate_Clay@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 15,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2008-09-23",
  "isManager" : false,
  "password" : "clayka"
}, {
  "firstName" : "Aida",
  "lastName" : "Wilkerson",
  "employeeId" : 76,
  "email" : "Aida_Wilkerson@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 16,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2001-01-24",
  "isManager" : false,
  "password" : "wilkersonai"
}, {
  "firstName" : "Abby",
  "lastName" : "Snyder",
  "employeeId" : 77,
  "email" : "Abby_Snyder@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 8,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2013-03-10",
  "isManager" : false,
  "password" : "snyderab"
}, {
  "firstName" : "Dominique",
  "lastName" : "Downs",
  "employeeId" : 78,
  "email" : "Dominique_Downs@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Tech Lead",
  "startDate" : "1999-07-30",
  "isManager" : false,
  "password" : "downsdo"
}, {
  "firstName" : "Logan",
  "lastName" : "Petty",
  "employeeId" : 79,
  "email" : "Logan_Petty@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 7,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1990-12-01",
  "isManager" : false,
  "password" : "pettylo"
}, {
  "firstName" : "Buster",
  "lastName" : "Cortez",
  "employeeId" : 80,
  "email" : "Buster_Cortez@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 5,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2003-02-14",
  "isManager" : false,
  "password" : "cortezbu"
}, {
  "firstName" : "Pedro",
  "lastName" : "Watts",
  "employeeId" : 81,
  "email" : "Pedro_Watts@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 17,
  "positionTitle" : "Software Architect",
  "startDate" : "2017-12-08",
  "isManager" : false,
  "password" : "wattspe"
}, {
  "firstName" : "Wilson",
  "lastName" : "Molina",
  "employeeId" : 82,
  "email" : "Wilson_Molina@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 10,
  "positionTitle" : "Software Engineer I",
  "startDate" : "2012-11-13",
  "isManager" : false,
  "password" : "molinawi"
}, {
  "firstName" : "Sebastian",
  "lastName" : "Wall",
  "employeeId" : 83,
  "email" : "Sebastian_Wall@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 3,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "2000-03-25",
  "isManager" : false,
  "password" : "wallse"
}, {
  "firstName" : "Tami",
  "lastName" : "Hays",
  "employeeId" : 84,
  "email" : "Tami_Hays@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 17,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "2015-11-23",
  "isManager" : false,
  "password" : "haysta"
}, {
  "firstName" : "Jerrold",
  "lastName" : "Yoder",
  "employeeId" : 85,
  "email" : "Jerrold_Yoder@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2009-11-06",
  "isManager" : false,
  "password" : "yoderje"
}, {
  "firstName" : "Morton",
  "lastName" : "Huang",
  "employeeId" : 86,
  "email" : "Morton_Huang@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "1992-07-29",
  "isManager" : false,
  "password" : "huangmo"
}, {
  "firstName" : "Shelley",
  "lastName" : "Vaughn",
  "employeeId" : 87,
  "email" : "Shelley_Vaughn@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Software Architect",
  "startDate" : "2012-09-09",
  "isManager" : false,
  "password" : "vaughnsh"
}, {
  "firstName" : "Beulah",
  "lastName" : "Mendoza",
  "employeeId" : 88,
  "email" : "Beulah_Mendoza@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 10,
  "positionTitle" : "Software Engineer II",
  "startDate" : "2004-05-22",
  "isManager" : false,
  "password" : "mendozabe"
}, {
  "firstName" : "Katy",
  "lastName" : "Snyder",
  "employeeId" : 89,
  "email" : "Katy_Snyder@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 4,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "1991-04-18",
  "isManager" : false,
  "password" : "snyderka"
}, {
  "firstName" : "Nelda",
  "lastName" : "Thornton",
  "employeeId" : 90,
  "email" : "Nelda_Thornton@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 14,
  "positionTitle" : "Site Reliability Engineer",
  "startDate" : "1993-11-15",
  "isManager" : false,
  "password" : "thorntonne"
}, {
  "firstName" : "Gracie",
  "lastName" : "Esparza",
  "employeeId" : 91,
  "email" : "Gracie_Esparza@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 16,
  "positionTitle" : "Senior Software Engineer",
  "startDate" : "2009-12-05",
  "isManager" : false,
  "password" : "esparzagr"
}, {
  "firstName" : "Allen",
  "lastName" : "Henry",
  "employeeId" : 92,
  "email" : "Allen_Henry@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 9,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "2010-01-10",
  "isManager" : false,
  "password" : "henryal"
}, {
  "firstName" : "Charlene",
  "lastName" : "Pace",
  "employeeId" : 93,
  "email" : "Charlene_Pace@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 15,
  "positionTitle" : "Software Engineer I",
  "startDate" : "1993-04-06",
  "isManager" : false,
  "password" : "pacech"
}, {
  "firstName" : "Ashlee",
  "lastName" : "Coleman",
  "employeeId" : 94,
  "email" : "Ashlee_Coleman@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 2,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "2014-02-15",
  "isManager" : false,
  "password" : "colemanas"
}, {
  "firstName" : "Avis",
  "lastName" : "Yang",
  "employeeId" : 95,
  "email" : "Avis_Yang@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 12,
  "positionTitle" : "Software Architect",
  "startDate" : "2017-07-05",
  "isManager" : false,
  "password" : "yangav"
}, {
  "firstName" : "Tessa",
  "lastName" : "Rangel",
  "employeeId" : 96,
  "email" : "Tessa_Rangel@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 11,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "1996-11-23",
  "isManager" : false,
  "password" : "rangelte"
}, {
  "firstName" : "Penelope",
  "lastName" : "Zimmerman",
  "employeeId" : 97,
  "email" : "Penelope_Zimmerman@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Software Architect",
  "startDate" : "1990-07-27",
  "isManager" : false,
  "password" : "zimmermanpe"
}, {
  "firstName" : "Chad",
  "lastName" : "Khan",
  "employeeId" : 98,
  "email" : "Chad_Khan@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 11,
  "positionTitle" : "DevOps Engineer",
  "startDate" : "2011-12-22",
  "isManager" : false,
  "password" : "khanch"
}, {
  "firstName" : "Susie",
  "lastName" : "Ruiz",
  "employeeId" : 99,
  "email" : "Susie_Ruiz@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 14,
  "positionTitle" : "Principal Software Architect",
  "startDate" : "2012-05-16",
  "isManager" : false,
  "password" : "ruizsu"
}, {
  "firstName" : "Aida",
  "lastName" : "Mathis",
  "employeeId" : 100,
  "email" : "Aida_Mathis@snazzykangarooconsulting.com",
  "companyId" : 1,
  "companyName" : "Snazzy Kangaroo Consulting",
  "managerId" : 13,
  "positionTitle" : "Software Engineer II",
  "startDate" : "1995-02-19",
  "isManager" : false,
  "password" : "mathisai"
} ]'::json))

insert into snazzy_kangaroo_consulting_employees ("firstName", "lastName", "employeeId", "email", "companyId", "companyName", "positionTitle", "startDate", "isManager", "password")
select p.*
from customer_json l
  cross join lateral json_populate_recordset(null::snazzy_kangaroo_consulting_employees, doc) as p;

SELECT * FROM public.snazzy_kangaroo_consulting_employees

