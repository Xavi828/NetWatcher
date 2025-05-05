BEGIN;


--
-- MIGRATION VERSION FOR net_watcher
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('net_watcher', '20250504143825704', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250504143825704', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
