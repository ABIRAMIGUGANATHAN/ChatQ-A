<!--
  Copyright (c) 2024 Intel Corporation

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->

<script lang="ts">
	import { createEventDispatcher } from "svelte";

	let dispatch = createEventDispatcher();
</script>

<!-- svelte-ignore a11y-click-events-have-key-events -->
<svg
class="absolute top-0 right-0 hover:opacity-70"
on:click={() => {
	dispatch('DeleteAvatar') }}
viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" width="20" height="20">
<path d="M512 832c-176.448 0-320-143.552-320-320S335.552 192 512 192s320 143.552 320 320-143.552 320-320 320m0-704C300.256 128 128 300.256 128 512s172.256 384 384 384 384-172.256 384-384S723.744 128 512 128" fill="#bbbbbb"></path><path d="M649.824 361.376a31.968 31.968 0 0 0-45.248 0L505.6 460.352l-98.976-98.976a31.968 31.968 0 1 0-45.248 45.248l98.976 98.976-98.976 98.976a32 32 0 0 0 45.248 45.248l98.976-98.976 98.976 98.976a31.904 31.904 0 0 0 45.248 0 31.968 31.968 0 0 0 0-45.248L550.848 505.6l98.976-98.976a31.968 31.968 0 0 0 0-45.248" fill="#bbbbbb"></path>
</svg>
