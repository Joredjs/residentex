import {
  Card,
  Input,
  CardBody,
  CardFooter,
  Typography,
  Button
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
              <Typography variant="h5" className="mb-2 text-negro">
                RESIDENTEX {/*<span className="text-stone-700">X</span>*/}
              </Typography>
              <div className="text-negro text-sm">
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
              <Button variant="text" size="sm" color="teal">
                Regístrate
              </Button>
              <Button variant="gradient" size="sm" color="green">
                Ingresar
              </Button>
            </CardFooter>
          </Card>
        </div>
        <div className="hidden sm:block sm:col-start-8 sm:col-span-5 md:col-start-7 md:col-span-6 sm:row-span-full">
          <div className="flex justify-center items-center h-full flex-col px-6 text-primario">
            <div className="font-bold text-lg -mt-6 mb-2">
              What is Lorem Ipsum?
            </div>
            Lorem Ipsum is simply dummy text of the printing and typesetting
            industry. Lorem Ipsum has been the industry's standard dummy text
            ever since the 1500s, when an unknown printer took a galley of type
            and scrambled it to make a type specimen book. It has survived not
            only five centuries, but also the leap into electronic typesetting,
            remaining essentially unchanged.
          </div>
        </div>
      </div>
    </main>
  )
}
