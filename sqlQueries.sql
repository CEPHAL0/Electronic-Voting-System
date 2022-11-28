CREATE TABLE voter (
    voter_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    area VARCHAR(20),
    vote_status VARCHAR(7)
) CREATE TABLE candidate (
    candidate_id INT PRIMARY KEY,
    name VARCHAR(100),
    area VARCHAR(20),
    votes_recieved INT
)
INSERT INTO candidate
VALUES (?, ?, ?, ?) -- insert_scriptAd, (candidate_id,candidate_name, candidate_area, candidate_voteCount)
DELETE FROM candidate
WHERE candidate_id = { candidate_id } -- use f "{}" for inserting variables inside the query on python
UPDATE candidate
SET name = ?,
    area = ?
WHERE candidate_id = { candidate_id }
SELECT *
FROM candidate
SELECT candidate_id,
    name,
    area,
    votes_recieved
FROM candidate
WHERE votes_recieved = (
        SELECT MAX(votes_recieved)
        FROM candidate
    )
    AND votes_recieved > 0
SELECT vote_status,
    voter_id,
    area
FROM voter
WHERE voter_id = { matchingID }
    AND vote_status = "FALSE"