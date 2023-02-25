import { meses } from "../utils/sharedInfo"
import { notas } from "../models/notas"
import { leyes } from "../models/leyes"
import { Link } from "@remix-run/react"

const mes = new Date().getMonth()

export default function Index() {
  return (
    <main className=" h-full w-full grid grid-rows-17">
      <div className="bg-negro row-span-2 row-start-1 flex text-blanco justify-between items-center">
        <div className="px-4">
          <span className="px-3">LOGO</span>
        </div>
        <div className="px-4 flex justify-around">
          <Link to="registrate">
            <div className="px-3 ">Registrate</div>
          </Link>
          <Link to="inicia">
            <div className="px-3">Inicia sesión</div>
          </Link>
        </div>
      </div>
      <div className="bg-gray-300 text-negro row-span-1 row-start-3 grid grid-cols-5 text-center cursor-pointer">
        <div className="border-r-[1px] hover:bg-negro hover:text-blanco flex justify-center items-center">
          ¿Quiénes somos?
        </div>
        <div className="border-r-[1px] hover:bg-negro hover:text-blanco flex justify-center items-center">
          ¿Qué hacemos?
        </div>
        <div className="border-r-[1px] hover:bg-negro hover:text-blanco flex justify-center items-center">
          Nuestros Servicios
        </div>
        <div className="border-r-[1px] hover:bg-negro hover:text-blanco flex justify-center items-center">
          Contáctanos
        </div>
        <div className="hover:bg-negro hover:text-blanco flex justify-center items-center">
          Otro que me invente
        </div>
      </div>
      <div className="border-blanco row-span-6 row-start-4 grid grid-cols-10">
        <div className="col-span-7 col-start-1 flex  flex-col justify-center items-center text-lg px-8 py-2 text-center  bg-slate-100 border-r-2 border-blanco">
          <div className="text-2xl text-negro">{notas[1].titulo}</div>
          <div className="py-2 px-20 text-xs text-slate-400 ">
            {notas[1].descripcion}
            <span> Aquí todo lo que debes saber.</span>
          </div>
        </div>
        <div className="col-span-3 col-start-8  text-3xl flex justify-center items-center text-center p-4">
          Notas de {meses[mes]}
        </div>
      </div>
      <div className="border-blanco border-t-2 row-span-6 row-start-10 grid grid-cols-10">
        <div className="col-span-3 col-start-1  text-3xl flex justify-center items-center text-center p-4">
          Información jurídica de interés
        </div>
        <div className="col-span-7 col-start-4 flex  flex-col justify-center items-center text-lg px-8 py-2 text-center  bg-slate-100 border-r-2 border-blanco">
          <div className="text-2xl text-negro">{leyes[1].titulo}</div>
          <div className="py-2 px-20 text-xs text-slate-400 ">
            {leyes[1].descripcion}
            <span> Clic para más detalle.</span>
          </div>
        </div>
      </div>
      <div className="bg-secundario row-span-2 row-start-16">f</div>
    </main>
  )
}
