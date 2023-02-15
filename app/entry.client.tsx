import { RemixBrowser } from "@remix-run/react"
import { startTransition, StrictMode } from "react"
import { hydrateRoot } from "react-dom/client"
import { ThemeProvider } from "@material-tailwind/react"

const tema = {
  button: {
    valid: {
      colors: ["primario", "secundario", "negro"]
    }
  }
}

function hydrate() {
  startTransition(() => {
    hydrateRoot(
      document,
      <StrictMode>
        <ThemeProvider value={tema}>
          <RemixBrowser />
        </ThemeProvider>
      </StrictMode>
    )
  })
}

if (typeof requestIdleCallback === "function") {
  requestIdleCallback(hydrate)
} else {
  // Safari doesn't support requestIdleCallback
  // https://caniuse.com/requestidlecallback
  setTimeout(hydrate, 1)
}
