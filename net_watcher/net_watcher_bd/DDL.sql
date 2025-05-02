CREATE TABLE client_info (
    id SERIAL PRIMARY KEY,
    ip_address TEXT NOT NULL,
    mac_address TEXT NOT NULL,
    hostname TEXT NOT NULL,
    os TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL
);