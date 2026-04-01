CREATE TABLE service_request(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  customer_name TEXT, 
  service_type TEXT,
  status TEXT DEFAULT 'open',
  priority TEXT DEFAULT 'low',
  assigned_technecian TEXT,
  scheduled_date TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  estimated_cost DOUBLE PRECISION,
  notes TEXT,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  delete BOOLEAN NOT NULL DEFAULT FALSE,
  deleted_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_service_request_priority ON service_request(priority);
CREATE INDEX idx_service_request_status ON service_request(status); 