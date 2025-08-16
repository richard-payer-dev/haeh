BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "question" DROP COLUMN "category";

--
-- MIGRATION VERSION FOR haeh
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('haeh', '20250816174848653', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250816174848653', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
