import { Outlet } from "@remix-run/react"
import MenuView from "../components/menu"

//import {} from "@heroicons/react/24/solid"

export default function dashboardView() {
  return (
    <main className="w-full h-full ">
      {/* DESKTOP */}
      <div className="w-full h-full hidden sm:grid sm:grid-cols-16">
        {/* MENU */}
        <MenuView></MenuView>
        {/* PANEL */}
        <div className="col-start-3 col-span-14 peer-hover:col-start-4 grid grid-rows-10">
          <div className="row-start-1 row-span-1"></div>
          <div className="row-start-2 row-span-full">
            <Outlet />
          </div>
        </div>
      </div>
      {/* MOBILE */}
      <div className="w-full h-full grid sm:hidden grid-rows-6">
        <div className="row-start-1 row-span-1">
          <div className="bg-primario w-full h-3/4"></div>
          <div></div>
        </div>
      </div>
    </main>
  )
}
