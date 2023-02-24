import { Link } from "@remix-run/react"
import type { menuItem, IconProps } from "../../app/utils/interfaces"
import { HeroIcons } from "../../app/utils/sharedInfo"

const menuItems: menuItem[] = [
  {
    icon: "BuildingOffice2Icon",
    name: "Propiedades",
    slug: "propiedades"
  },
  {
    icon: "AtSymbolIcon",
    name: "Usuarios2",
    slug: "usuarios"
  },
  {
    icon: "LockClosedIcon",
    name: "Usuarios3",
    slug: "usuarios"
  }
]

const DynamicHeroIcon = ({
  icon,
  className = "w-6 h-6 text-gray-600"
}: IconProps) => {
  const SingleIcon = HeroIcons[icon]

  return <SingleIcon className={className} />
}

const MenuView = (): React.ReactElement => {
  return (
    <div className="bg-negro peer col-start-1 col-span-2 hover:col-span-3 flex flex-col justify-between">
      <div className="text-blanco py-6 text-center">Logo</div>
      <div className="flex-grow group/menu">
        <ul>
          {menuItems.map((menuItem) => (
            <li key={menuItem.name}>
              <Link to={menuItem.slug} className="itemMenu">
                <i>
                  <DynamicHeroIcon icon={menuItem.icon} className="w-8 h-8" />
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
  )
}

export default MenuView
