-- Crear tabla en la base netwatcher
CREATE TABLE devices (
    id SERIAL PRIMARY KEY,
    hostname VARCHAR(255) NOT NULL,
    os VARCHAR(50) NOT NULL,
    ip_address INET NOT NULL,
    mac_address MACADDR NOT NULL,
    last_seen TIMESTAMPTZ DEFAULT now()
);

-- Otorgar permisos al usuario de aplicación
GRANT USAGE ON SCHEMA public TO netwatcher_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO netwatcher_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO netwatcher_user;
