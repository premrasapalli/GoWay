// pages/index.js
import Head from 'next/head'
import styles from '../styles/Home.module.css'
import Map from '../components/Map'
import RideSelector from '../components/RideSelector'
import { useState } from 'react'

export default function Home() {
  const [selected, setSelected] = useState(null)

  return (
    <div className={styles.container}>
      <Head>
        <title>GoWay - Home</title>
      </Head>

      <header className={styles.header}>
        <h1>GoWay</h1>
        <nav>
          <a href="/search" style={{ marginRight: 12 }}>Search</a>
          <a href="/login">Login</a>
        </nav>
      </header>

      <main>
        <div className={styles.card}>
          <Map />
          <div style={{ marginTop: 16 }}>
            <RideSelector onSelect={(r) => setSelected(r)} />
            {selected && (
              <div style={{ marginTop: 12 }}>
                Selected: <strong>{selected.title}</strong>
              </div>
            )}
          </div>
        </div>
      </main>
    </div>
  )
}

