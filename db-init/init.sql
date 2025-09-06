CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE notifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id VARCHAR(255) NOT NULL,
    expense_share_id VARCHAR(255) NOT NULL, 
    created_at TIMESTAMPTZ DEFAULT now()
);
