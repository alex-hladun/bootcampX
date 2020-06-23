SELECT cohorts.name, AVG(completed_at - started_at) 
FROM assistance_requests;
