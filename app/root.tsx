import type { MetaFunction, LinksFunction } from "@remix-run/node";
import {
	Links,
	LiveReload,
	Meta,
	Outlet,
	Scripts,
	ScrollRestoration,
} from "@remix-run/react";

import tailwind from "./tailwind.css";

export const meta: MetaFunction = () => ({
	charset: "utf-8",
	title: "Votaciones",
	viewport: "width=device-width,initial-scale=1",
});

export const links: LinksFunction = () => [
	{ rel: "stylesheet", href: tailwind },
];

export default function App() {
	return (
		<html lang="en">
			<head>
				<Meta />
				<Links />
			</head>
			<body>
				<Outlet />
				<ScrollRestoration />
				<Scripts />
				<LiveReload />
			</body>
		</html>
	);
}