BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sound_bites" (
    "id" bigserial PRIMARY KEY,
    "url" text NOT NULL,
    "category" text NOT NULL,
    "name" text NOT NULL
);


--
-- MIGRATION VERSION FOR haeh
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('haeh', '20250816213916986', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250816213916986', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
