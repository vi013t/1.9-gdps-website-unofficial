<script lang="ts">
	import type { Snippet } from "svelte";
	import StarIcon from "./icons/StarIcon.svelte";

	let { children }: { children: Snippet } = $props();
</script>

<div>
	<!-- this was going to be a lightbulb but...,, i ended up using a star temporarily n i lowkey think its cuter ^_^ -->
	<StarIcon stroke="black" style="width: 1.5em; height: 1.5em;"/>
	<b>NOTE</b>
	<br/>
	{@render children()}
</div>

<style>
	div {
		background-image: linear-gradient(to bottom right, #f9e2af, #fab387);
		color: black;
		padding: 1em;
		border-radius: 0.5em;
		margin-top: 1em;
		outline: 3px solid rgba(255, 255, 255, 70%);
		outline-offset: -2px;

		br {
			margin-bottom: 0.2em;
		}

		b:not(#a) {
			color: black;
			position: relative;
			top: -5px;
		}

		:global(b) {
			font-weight: bold;
		}

		:global(a) {
			font-weight: bold;
		}

		:global(*:not(#a)) {
			color: black;
		}
	}
</style>