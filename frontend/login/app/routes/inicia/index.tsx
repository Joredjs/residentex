import { Link } from "@remix-run/react"

import { appName } from "../../utils/sharedInfo"

import {
  Button,
  Card,
  CardBody,
  CardFooter,
  Input
} from "@material-tailwind/react"

import { AtSymbolIcon, LockClosedIcon } from "@heroicons/react/24/solid"

export default function LoginView() {
  return (
    <main className="w-full h-full ">
      <div className="bg-primario grid grid-cols-12 grid-rows-5 w-full h-full">
        <div className="bg-primario col-start-1 col-span-4 row-span-full hidden sm:block"></div>
        <div className="bg-negro col-start-5 col-span-8 row-span-full hidden sm:block"></div>
        <div className="flex justify-center items-center row-start-2 row-span-3 col-start-2 col-span-10 sm:col-start-3 sm:col-span-5 md:col-start-3 md:col-span-4">
          <Card className="w-full">
            <CardBody className="text-center">
              <div className="titulo uppercase">{appName}</div>
              <div className="">
                Si ya tienes cuenta con nosotros por favor inicia sesión, de lo
                contrario registrate!
              </div>
              <div className="mt-5">
                <div className="">
                  <Input
                    label="correo"
                    size="md"
                    color="teal"
                    icon={<AtSymbolIcon />}
                  />
                </div>
                <div className="mt-5">
                  <Input
                    label="contraseña"
                    size="md"
                    color="teal"
                    icon={<LockClosedIcon />}
                    type="password"
                  />
                </div>
              </div>
            </CardBody>
            <CardFooter
              divider
              className="flex items-center justify-between py-3"
            >
              <Link to="/registrate">
                <Button variant="text" size="sm" color="teal">
                  Regístrate
                </Button>
              </Link>
              <Button variant="gradient" size="sm" color="teal">
                Ingresar
              </Button>
            </CardFooter>
          </Card>
        </div>
        <div className="hidden sm:block sm:col-start-8 sm:col-span-5 md:col-start-7 md:col-span-6 sm:row-span-full">
          <div className="flex justify-center items-center h-full flex-col px-6 text-primario">
            <div className="titulo -mt-6 text-primario">
              What is Lorem Ipsum?
            </div>
            <div className="px-6">
              Lorem Ipsum is simply dummy text of the printing and typesetting
              industry. Lorem Ipsum has been the industry's standard dummy text
              ever since the 1500s, when an unknown printer took a galley of
              type and scrambled it to make a type specimen book. It has
              survived not only five centuries, but also the leap into
              electronic typesetting, remaining essentially unchanged.
            </div>
          </div>
        </div>
      </div>
    </main>
  )
}
