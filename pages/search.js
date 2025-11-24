// pages/search.js
import Head from 'next/head'
import Map from '../components/Map'

export default function Search() {
  return (
    <>
      <Head><title>Search - GoWay</title></Head>
      <div style={{ maxWidth: 1024, margin: '2rem auto' }}>
        <h2>Search locations</h2>
        <p>Simple search page. Replace with real search controls + places API.</p>
        <Map />
      </div>
    </>
  )
}

