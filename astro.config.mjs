// SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
//
// SPDX-License-Identifier: CC0-1.0

import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

// https://astro.build/config
export default defineConfig({
	integrations: [
		starlight({
			title: "ZigTut.Org",
			favicon: "/zig-mark.svg",
			social: {
				github: "https://github.com/ziglang-ru/zigtut.org",
			},
			editLink: {
				baseUrl: "https://github.com/ziglang-ru/zigtut.org/edit/main/",
			},
			lastUpdated: true,
			sidebar: [
				{
					label: "Home",
					link: "/",
				},
				{
					label: "Getting Started",
					collapsed: true,
					autogenerate: { directory: "00-getting-started/" },
				},
				{
					label: "Language",
					collapsed: true,
					autogenerate: { directory: "01-language-basics/" },
				},
				{
					label: "Standard Library",
					collapsed: true,
					autogenerate: { directory: "02-standard-library/" },
				},
				{
					label: "Build System",
					collapsed: true,
					autogenerate: { directory: "03-build-system/" },
				},
				{
					label: "Working with C",
					collapsed: true,
					autogenerate: { directory: "04-working-with-c/" },
				},
			],
		}),
	],
});
