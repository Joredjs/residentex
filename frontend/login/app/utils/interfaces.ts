import type { IconName } from "./sharedInfo"

export interface IconProps {
  icon: IconName
  className?: string
}

export interface menuItem {
  icon: IconName
  name: string
  slug: string
}
