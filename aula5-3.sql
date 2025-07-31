-- Inserting mass data --

INSERT INTO users (name, email, birth_date, street) VALUES
('João Silva', 'joao.silva@example.com', '1990-01-01', 'Street A'),
('Maria Santos', 'maria.santos@example.com', '1992-03-15', 'Street B'),
('Pedro Almeida', 'pedro.almeida@example.com', '1985-07-10', 'Street C'),
('Ana Oliveira', 'ana.oliveira@example.com', '1998-12-25', 'Street D'),
('Carlos Pereira', 'carlos.pereira@example.com', '1991-06-05', 'Street E'),
('Laura Mendes', 'laura.mendes@example.com', '1994-09-12', 'Street F'),
('Fernando Santos', 'fernando.santos@example.com', '1988-02-20', 'Street G'),
('Mariana Costa', 'mariana.costa@example.com', '1997-11-30', 'Street H'),
('Ricardo Rodrigues', 'ricardo.rodrigues@example.com', '1993-04-18', 'Street I'),
('Camila Alves', 'camila.alves@example.com', '1989-08-08', 'Street J'),
('Bruno Carvalho', 'bruno.carvalho@example.com', '1995-03-25', 'Street K'),
('Amanda Silva', 'amanda.silva@example.com', '1996-12-02', 'Street L'),
('Paulo Mendonça', 'paulo.mendonca@example.com', '1999-07-20', 'Street M'),
('Larissa Oliveira', 'larissa.oliveira@example.com', '1987-10-15', 'Street N'),
('Fernanda Sousa', 'fernanda.sousa@example.com', '1992-05-08', 'Street O'),
('Gustavo Santos', 'gustavo.santos@example.com', '1993-09-18', 'Street P'),
('Helena Costa', 'helena.costa@example.com', '1998-02-22', 'Street Q'),
('Diego Almeida', 'diego.almeida@example.com', '1991-11-27', 'Street R'),
('Juliana Lima', 'juliana.lima@example.com', '1997-04-05', 'Street S'),
('Rafaela Silva', 'rafaela.silva@example.com', '1996-01-10', 'Street T'),
('Lucas Pereira', 'lucas.pereira@example.com', '1986-08-30', 'Street U'),
('Fábio Rodrigues', 'fabio.rodrigues@example.com', '1989-03-12', 'Street V'),
('Isabela Santos', 'isabela.santos@example.com', '1994-12-07', 'Street W'),
('André Alves', 'andre.alves@example.com', '1995-09-28', 'Street X'),
('Clara Carvalho', 'clara.carvalho@example.com', '1990-02-15', 'Street Y'),
('Roberto Mendes', 'roberto.mendes@example.com', '1992-07-21', 'Street Z'),
('Mariana Oliveira', 'mariana.oliveira@example.com', '1997-05-03', 'Avenue A'),
('Gustavo Costa', 'gustavo.costa@example.com', '1998-11-16', 'Avenue B'),
('Lara Sousa', 'lara.sousa@example.com', '1993-06-09', 'Avenue C'),
('Pedro Lima', 'pedro.lima@example.com', '1996-09-27', 'Avenue D');

EXPLAIN SELECT * FROM users WHERE name = "Maria";

EXPLAIN SELECT * FROM users us
INNER JOIN bookings bk
ON us.id = bk.id_user
WHERE name = "Maria";

CREATE INDEX idx_name ON users(name);

EXPLAIN SELECT * FROM users WHERE name = "Maria";
