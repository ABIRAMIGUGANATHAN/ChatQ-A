// Copyright (c) 2024 Intel Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import { env } from "$env/dynamic/public";
import { SSE } from "sse.js";

const CHAT_BASE_URL = env.CHAT_BASE_URL;
const MODEL_ID = env.MODEL_ID;

export async function fetchTextStream(query: string) {
	let payload = {};
	let url = "";
	let modelId = "meta-llama/Meta-Llama-3-8B-Instruct";

	if (MODEL_ID) {
		modelId = MODEL_ID;
	}

	payload = {
		model: `${modelId}`,
		messages: query,
	};
	url = `${CHAT_BASE_URL}`;
	console.log("fetchTextStream", url);

	return new SSE(url, {
		headers: { "Content-Type": "application/json" },
		payload: JSON.stringify(payload),
	});
}
