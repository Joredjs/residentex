import { Link } from "@remix-run/react"

import {
  Button,
  Card,
  CardBody,
  CardFooter,
  Input
} from "@material-tailwind/react"

import {
  AtSymbolIcon,
  LockClosedIcon,
  UserIcon
} from "@heroicons/react/24/solid"

export default function ResgitroView() {
  return (
    <main className="w-full h-full ">
      <div className="grid grid-cols-12 grid-rows-5 w-full h-full">
        <div className="bg-negro col-start-1 col-span-12 row-span-full sm:block sm:col-start-1 sm:col-span-8">
          <div className="flex justify-center items-center h-full px-6 sm:px-20 md:px-36">
            <Card className="w-full">
              <CardBody className="text-center">
                <div className="titulo">RESIDENTEX</div>
                <div className="text-gray">
                  Recuerda que debes ser el administrador de la propiedad
                  horizontal para poder registrarte
                </div>
                <div className="mt-5">
                  <div className="mt-5">
                    <Input
                      label="nombre"
                      size="md"
                      color="teal"
                      icon={<UserIcon />}
                    />
                  </div>
                  <div className="mt-5">
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
                <div className="text-gray text-xs mt-5">
                  Al registrarte aceptas estar de acuerdo con nuestros{" "}
                  <Link to="/terminos"> términos y condiciones</Link>
                </div>
              </CardBody>
              <CardFooter
                divider
                className="flex items-center justify-between py-3"
              >
                <Link to="/inicia">
                  <Button variant="text" size="sm" color="red">
                    cancelar
                  </Button>
                </Link>
                <Link to="/panel">
                  <Button variant="gradient" size="sm" color="teal">
                    Confirmar
                  </Button>
                </Link>
              </CardFooter>
            </Card>
          </div>
        </div>
        <div className="bg-primario row-span-full hidden sm:block sm:col-start-9 sm:col-span-4">
          <div className="text-negro px-6 flex justify-center items-center flex-col h-full">
            <div className="titulo -mt-6 mb-2">Bienvenido</div>
            <div>
              Gracias por confiar en nosotros para tu propiedad horizontal, por
              favor llena el formulario con tus datos para continuar con tu
              registro.
            </div>
          </div>
        </div>
      </div>
    </main>
  )
}
