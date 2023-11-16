CREATE USER [piasys-security-tutorial-func] FROM EXTERNAL PROVIDER;
ALTER ROLE db_datareader ADD MEMBER [piasys-security-tutorial-func];
GO
