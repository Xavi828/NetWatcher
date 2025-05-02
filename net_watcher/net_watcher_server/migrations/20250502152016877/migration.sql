BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "client_info" (
    "id" bigserial PRIMARY KEY,
    "ipAddress" text NOT NULL,
    "macAddress" text NOT NULL,
    "hostname" text NOT NULL,
    "os" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR net_watcher
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('net_watcher', '20250502152016877', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250502152016877', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
