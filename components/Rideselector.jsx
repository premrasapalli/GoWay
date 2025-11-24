// components/RideSelector.jsx
import React from 'react';
import { rides } from './data/data';

export default function RideSelector({ onSelect }) {
  return (
    <div>
      <h3 style={{ marginBottom: 8 }}>Choose ride</h3>
      <div style={{ display: 'flex', gap: 8 }}>
        {rides.map(r => (
          <button
            key={r.id}
            onClick={() => onSelect(r)}
            style={{
              padding: '10px 12px',
              borderRadius: 8,
              border: '1px solid #e5e7eb',
              background: '#fff',
              cursor: 'pointer'
            }}
          >
            <div style={{ fontWeight: 600 }}>{r.title}</div>
            <small style={{ color: '#6b7280' }}>x{r.multiplier}</small>
          </button>
        ))}
      </div>
    </div>
  );
}

