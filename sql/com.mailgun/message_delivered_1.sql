-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2017-12-06 11:52

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_mailgun_message_delivered_1 (
    "schema_vendor"   VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"   VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"         CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"     TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"        VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"        VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"      VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "domain"          VARCHAR(256)  ENCODE LZO,
    "event"           VARCHAR(16)   ENCODE LZO,
    "message_headers" VARCHAR(4096) ENCODE LZO,
    "message_id"      VARCHAR(1024) ENCODE LZO,
    "recipient"       VARCHAR(256)  ENCODE LZO,
    "signature"       VARCHAR(128)  ENCODE LZO,
    "timestamp"       TIMESTAMP     ENCODE LZO,
    "token"           CHAR(50)      ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_mailgun_message_delivered_1 IS 'iglu:com.mailgun/message_delivered/jsonschema/1-0-0';
