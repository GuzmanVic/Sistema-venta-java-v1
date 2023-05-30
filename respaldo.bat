set anio=%date:~6,4%
set mes=%date:~3,2%
set dia=%date:~0,2%
set nombre=pos_%anio%-%mes%-%dia%.sql

mysqldump -u root -pABDManager1 --routines db_tienda > C:\Users\victo\OneDrive\Documentos\GitHub\Sistema-venta-java-v1\respaldos\%nombre%