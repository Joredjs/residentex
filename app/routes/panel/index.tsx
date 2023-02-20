import * as HeroIcons from "@heroicons/react/24/outline"
import { Link } from "@remix-run/react"
import menuComponent from "./menu.component"

type IconName = keyof typeof HeroIcons

//import {} from "@heroicons/react/24/solid"

interface IconProps {
  icon: IconName
  className?: string
}

interface menuItem {
  icon: IconName
  name: string
  slug: string
}

const menuItems: menuItem[] = [
  {
    icon: "BuildingOffice2Icon",
    name: "Propiedades",
    slug: "propiedades"
  },
  {
    icon: "AtSymbolIcon",
    name: "Usuarios2",
    slug: "Usuarios"
  },
  {
    icon: "LockClosedIcon",
    name: "Usuarios3",
    slug: "Usuarios"
  }
]

export const DynamicHeroIcon = ({
  icon,
  className = "w-6 h-6 text-gray-600"
}: IconProps) => {
  const SingleIcon = HeroIcons[icon]

  return <SingleIcon className={className} />
}

export default function dashboardView() {
  return (
    <main className="w-full h-full ">
      {/* DESKTOP */}
      <div className="w-full h-full hidden sm:grid sm:grid-cols-16">
        {/* MENU */}
        <div className="bg-negro peer col-start-1 col-span-1 hover:col-span-2 flex flex-col justify-between">
          <div className="text-white py-6 text-center">Logo</div>
          <div className="flex-grow group/menu">
            <ul>
              {menuItems.map((menuItem) => (
                <li key={menuItem.name}>
                  <Link to={menuItem.slug} className="itemMenu">
                    <i>
                      <DynamicHeroIcon
                        icon={menuItem.icon}
                        className="w-8 h-8"
                      />
                    </i>
                    <span className="px-3 hidden group-hover/menu:block">
                      {menuItem.name}
                    </span>
                  </Link>
                </li>
              ))}
            </ul>
          </div>
          <div className="bg-secundario py-6 text-center">Footer</div>
        </div>
        {/* PANEL */}
        <div className="col-start-2 col-span-15 peer-hover:col-start-3 grid grid-rows-10">
          <div className="row-start-1 row-span-1"></div>
          <div className="row-start-2 row-span-full">
            
          </div>
        </div>
      </div>
      {/* MOBILE */}
      <div className="w-full h-full grid sm:hidden grid-rows-6">
        <div className="row-start-1 row-span-1">
          <div className="bg-primario w-full h-3/4"></div>
        </div>
      </div>
    </main>
  )
}
