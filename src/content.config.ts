// SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
//
// SPDX-License-Identifier: CC0-1.0

import { defineCollection } from 'astro:content';
import { docsLoader } from "@astrojs/starlight/loaders";
import { docsSchema } from '@astrojs/starlight/schema';

export const collections = {
	docs: defineCollection({ loader: docsLoader(), schema: docsSchema() }),
};
