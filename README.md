Projekt tem ma na celu wyrobienie w programistach amatorach dobrych nawyków w trakcie projektowania aplikacji bazodanowych pisanych w środowisku Delphi.

Projekt to prosta książka adresowa.
Podstawowe założenia:
- aplikacja sieciowa w technologii klient-serwer z bazą na serwerze MS SQL,
- dostęp do bazy bezpośrednio, nie przez rest-a czy soap,
- oczywiście DataSet-y,
- główna forma będzie się składała z grida ze wszystkimi rekordami w bazie,
- pod gridem dwa buttony do pokazania nowej formy na której będzie można utworzyć / edytować dane. Dzięki komponentom bazodanowym chcę zrobić to na jednej formie a nie na dwóch osobnych jak to robiłem zwykle - mam nadzieje że nie jest to niezgodne z zasadami?.

Baza danych to trzy tabele. Pierwsza to uzytkownicy w której są dwie kolumny:
-  [id] typu [int] IDENTITY(1,1) NOT NULL,
-  [uzytkownik] typu varchar NULL,

Druga tabela to adresy w której są następujące kolumny:
-  [id] [int] IDENTITY(1,1) NOT NULL,
-  [nazwa] varchar NULL,
-  [ulica] varchar NULL,
-  [kod_poczt] varchar NULL,
-  [miejscowosc] varchar NULL,
-  [id_uzytkownik] [int] NOT NULL,
-  [wspolny] [bit] NOT NULL,
    
Trzecia tabela to historia w której będa zapisywane wszelkie operacje jakie wykonuje użytkownik:
-  [id] [int] IDENTITY(1,1) NOT NULL,
-  [panel] [int] NULL,
-  [rekord] [int] NULL,
-  [operacja] [varchar](1000) NULL,
-  [uzytkownik] [varchar](255) NOT NULL,
-  [komputer] [varchar](255) NULL,
-  [data_utworzenia] [datetime] NOT NULL,
-  [usun] [bit] NOT NULL,

W projekcie znajdują się pliki wygenerowane przez Delphi XE8 oraz kopia bazy danych MSSQL 2014
