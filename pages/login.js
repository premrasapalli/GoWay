// pages/login.js
import Head from 'next/head'

export default function Login() {
  return (
    <>
      <Head><title>Login - GoWay</title></Head>
      <div style={{ maxWidth: 420, margin: '4rem auto' }}>
        <h2>Login</h2>
        <p>This is a placeholder. Wire Firebase auth here.</p>
        <form>
          <input placeholder="Email" style={{ display: 'block', width: '100%', padding: 8, marginBottom: 8 }} />
          <input placeholder="Password" type="password" style={{ display: 'block', width: '100%', padding: 8, marginBottom: 8 }} />
          <button style={{ padding: 8 }}>Sign In</button>
        </form>
      </div>
    </>
  )
}

