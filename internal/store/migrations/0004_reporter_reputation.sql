-- The registry keeps a per-reporter reputation score, which reporter events do
-- not carry. The reconciler refreshes this column by reading get_reporter_score
-- from the registry, and the API serves it with the reporter profile.
ALTER TABLE reporters ADD COLUMN IF NOT EXISTS reputation_score INTEGER NOT NULL DEFAULT 0;
