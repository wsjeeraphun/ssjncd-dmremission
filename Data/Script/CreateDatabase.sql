-- HisSettings
CREATE TABLE IF NOT EXISTS HisSettings (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Provider TEXT,
    Port TEXT,
    IpAddress TEXT,
    DatabaseName TEXT,
    Username TEXT,
    Password TEXT,
    HospCode TEXT,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

-- ApiSettings
CREATE TABLE IF NOT EXISTS ApiSettings (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Url TEXT,
    TokenKey TEXT,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

-- Queries
CREATE TABLE IF NOT EXISTS Queries (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    TitleName TEXT,
    Description TEXT,
    Query TEXT,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

-- Applicants
CREATE TABLE IF NOT EXISTS Applicants (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Cid TEXT,
    Hn TEXT,
    FirstName TEXT,
    LastName TEXT,
    Age TEXT,
    HospCodeRegister TEXT,
    HospCodeMain TEXT,
    DmStatus TEXT,
    Tel TEXT,
    Zipcode TEXT,
    Sex TEXT,
    IsActive INTEGER,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

CREATE INDEX IF NOT EXISTS IdxApplicantsCid ON Applicants(Cid);
CREATE INDEX IF NOT EXISTS IdxApplicantsHn  ON Applicants(Hn);

-- DataTransmission
CREATE TABLE IF NOT EXISTS DataTransmission (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Cid TEXT,
    RefId TEXT,
    DateTimeService DATETIME,
    DataType TEXT,
    Payload TEXT,
    IsSent INTEGER,
    Retry INTEGER,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

CREATE INDEX IF NOT EXISTS IdxDataTransmissionCid   ON DataTransmission(Cid);
CREATE INDEX IF NOT EXISTS IdxDataTransmissionRefId ON DataTransmission(RefId);
-- HisSettings
CREATE TABLE IF NOT EXISTS HisSettings (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Provider TEXT,
    Port TEXT,
    IpAddress TEXT,
    DatabaseName TEXT,
    Username TEXT,
    Password TEXT,
    HospCode TEXT,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

-- ApiSettings
CREATE TABLE IF NOT EXISTS ApiSettings (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Url TEXT,
    TokenKey TEXT,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

-- Queries
CREATE TABLE IF NOT EXISTS Queries (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    TitleName TEXT,
    Description TEXT,
    Query TEXT,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

-- Applicants
CREATE TABLE IF NOT EXISTS Applicants (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Cid TEXT,
    Hn TEXT,
    FirstName TEXT,
    LastName TEXT,
    Age TEXT,
    HospCodeRegister TEXT,
    HospCodeMain TEXT,
    DmStatus TEXT,
    IsActive INTEGER,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

CREATE INDEX IF NOT EXISTS IdxApplicantsCid ON Applicants(Cid);
CREATE INDEX IF NOT EXISTS IdxApplicantsHn  ON Applicants(Hn);

-- DataTransmission
CREATE TABLE IF NOT EXISTS DataTransmission (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Cid TEXT,
    RefId TEXT,
    DateTimeService DATETIME,
    DataType TEXT,
    Payload TEXT,
    IsSent INTEGER,
    Retry INTEGER,
    Created DATETIME DEFAULT CURRENT_TIMESTAMP,
    LastModified DATETIME
);

CREATE INDEX IF NOT EXISTS IdxDataTransmissionCid   ON DataTransmission(Cid);
CREATE INDEX IF NOT EXISTS IdxDataTransmissionRefId ON DataTransmission(RefId);
