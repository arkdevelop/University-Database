CREATE TABLE University (
    name VARCHAR(32),
    uid INTEGER primary key,
    city VARCHAR(32),
    state VARCHAR(32),
    url VARCHAR(32)
);

CREATE TABLE Degree (
    name VARCHAR(32),
    type VARCHAR(32),
    did INTEGER primary key
);

CREATE TABLE Country (
    name VARCHAR(32),
    cid INTEGER primary key
);

CREATE TABLE Agent (
    fname VARCHAR(32),
    lname VARCHAR(32),
    aid INTEGER primary key,
    phone VARCHAR(32),
    email VARCHAR(32),
    commission FLOAT, 
    resides_in_city VARCHAR(32),
    cid INTEGER,
    uid INTEGER,
    foreign key (cid) references Country(cid),
    foreign key (uid) references University(uid)
);

CREATE TABLE Degree_Offered (
    uid INTEGER,
    did INTEGER,
    foreign key (uid) references University(uid),
    foreign key (did) references Degree(did)
);

CREATE TABLE Recruits_From (
    uid INTEGER,
    cid INTEGER,
    numstudents INTEGER,
    foreign key (uid) references University(uid),
    foreign key (cid) references Country(cid)
);
