ALTER TABLE IDN_SAML2_ASSERTION_STORE ADD COLUMN ASSERTION BLOB
/

ALTER TABLE IDN_OAUTH_CONSUMER_APPS ALTER COLUMN CALLBACK_URL SET DATA TYPE VARCHAR(2048)
/

ALTER TABLE IDN_OAUTH1A_REQUEST_TOKEN ALTER COLUMN CALLBACK_URL SET DATA TYPE VARCHAR(2048)
/

ALTER TABLE IDN_OAUTH2_AUTHORIZATION_CODE ALTER COLUMN CALLBACK_URL SET DATA TYPE VARCHAR(2048)
/

CREATE INDEX IDX_USER_RID ON IDN_UMA_RESOURCE (RESOURCE_ID, RESOURCE_OWNER_NAME, USER_DOMAIN, CLIENT_ID)
/