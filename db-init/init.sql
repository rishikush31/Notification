CREATE EXTENSION IF NOT EXISTS "uuid-ossp";CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE notifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    expense_share_id UUID NOT NULL REFERENCES expense_share(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT now()
);
