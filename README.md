# RESIDENTEX

Plataforma para la administración de propiedades horizontales, este repo se maneja como un monorepo utilizando [turborepo](https://turbo.build/repo/docs) y [pnpm](https://pnpm.io) como manejador de paquetes.

## Comandos

``` bash
#serve para desarrollo
pnpm run dev
#Compilación para prod
pnpm run build
```

## *CI/CD*

Turborepo usa [Remote Caching](https://turbo.build/repo/docs/core-concepts/remote-caching) para compartir el cache de artefactos entre máquinas, para activarlo es necesario una cuenta de [vercel](https://vercel.com/).

Se debe autenticar turborepo CLI con la [cuenta de vercel](https://vercel.com/docs/concepts/personal-accounts/overview), y luego vincular el repo con el *remote cache*

``` bash
# autenticar turborepo CLI
pnpm dlx turbo login
# vincular el repo con el remote cache
pnpm dlx turbo link
```

## Contenido

### Apps y Paquetes

- `frontend`: workspace contenedor de todos los microfrontends utilizados en el proyecto
  - `admin`: workspace contenedor de todos los microfrontends utilizados para el proyecto admin
    - `root`: app tipo root-config trabajada con [single-spa](https://single-spa.js.org/)
    - `login`: app tipo app-parcel trabajada con [single-spa](https://single-spa.js.org/) con el framework [x](//)
  - `usuario`: workspace contenedor de todos los microfrontends utilizados para el proyecto residente / propietario / vigilante
    - `root`: app tipo root-config trabajada con [single-spa](https://single-spa.js.org/)
    - `login`: app tipo app-parcel trabajada con [single-spa](https://single-spa.js.org/) con el framework [x](//)
- `backend`: workspace contenedor de todos los microservicios utilizados en el proyecto
- `packages`: Utilidades compartidas en el proyecto
  - `ui`: a stub React component library shared by both `web` and `docs` applications
  - `eslint-config-custom`: `eslint` configurations (includes `eslint-config-next` and `eslint-config-prettier`)
  - `tsconfig`: `tsconfig.json`s used throughout the monorepo
  - `firebase`: utilidades de firebase

### Utilidades

- [TypeScript](https://www.typescriptlang.org/) for static type checking
- [ESLint](https://eslint.org/) for code linting
- [Prettier](https://prettier.io) for code formatting

## Secciones

### Admin

- Home (REMIX)
  - Quienes somos
  - Que hacemos
  - Nuestros Servicios
  - Pricing
  - Contacto
- Login (Next)
- Registro (Next)
- Panel (Angular)
- Blog (Gatsby)

### residente

- Home

### Vigilante

- Home

## Estrategia repositorio

- **Trunk based development:** Se tiene una única rama de vida larga (***main***), el resto de ramas son de vida corta, [más info](https://trunkbaseddevelopment.com/)
- **Ramas:** Se crea una rama principal (main) sobre la cual va a estar el código de producción. CUando se empieza a trabajar en algo del código se debe crear una rama, la cual va a ser de vida corta, con el nombre {***user/yyyymmdd***} ej: ***jgaray/20230401***
- ***Commits:*** Los commits **deben** seguir [esta convención](https://www.conventionalcommits.org/en/v1.0.0/)

### Merge Request

Todos los cambios que se integren a la rama principal (*main*), deben pasar a través de un merge/pull request. El estandar del PR es el siguiente:

### Estándares de código

Se deben seguir los lineamientos del archivo *.editorconfig*, así como debe pasar las pruebas de lint de *eslint* y el estilo de codigo definido en *prettier*.

### Validaciones

El proyecto utiliza *husky* para hacer las validaciones antes de ejecutar los commits.

## Pendientes

Si son generales se deben agregar al archivo *TODO.md*, si son especificos de codigo se debe dejar en un comentario **TODO: xxx** para poder hacerle seguimiento a los pendientes de código

## ideas

Se deben agregar en el archivo *ideas.md*
