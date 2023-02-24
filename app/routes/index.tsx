import { Link } from "@remix-run/react"

export default function Index() {
  return (
    <div>
      <h1 className="text-3xl font-bold underline">Welcome to Remix</h1>
      <Link to="/inicia">Iniciar</Link>
    </div>
  )
}
