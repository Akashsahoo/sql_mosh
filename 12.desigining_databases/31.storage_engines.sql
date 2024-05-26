-- don't do it production because it will recreate tables during recreate timming your database is unavailable

CREATE TABLE customers
ENGINE = InnoDB;
ALTER TABLE customers
ENGINE = InnoDB;