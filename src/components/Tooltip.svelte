<script lang="ts">
	import type { Snippet } from "svelte";

	let { visible = $bindable(false), children }: { visible?: boolean, children: Snippet } = $props();
</script>

<div style:scale={visible ? "100%" : "0%"}>
	{@render children()}
</div>

<style>
	div {
		box-shadow: 0px 0px 1em black;
		position: absolute;
		top: calc(100% + 5px);
		left: 50%;
		transform: translateX(-50%);
		z-index: 9999;
		background-color: #1e1e2e;
		color: #cdd6f4;
		border: 1px solid #555566;
		font-size: 0.8rem;
		padding: 1em;
		border-radius: 0.5em;
		width: 10em;
		transition: scale 0.1s;
		transform-origin: 0% 0%;

		&::before {
			content: "";
			background: inherit;
			top: 0px;
			left: 50%;
			width: 1rem;
			height: 1rem;
			transform: translateX(-50%) rotate(45deg) translateY(-100%);
			transform-origin: 0% 0%;
			position: absolute;
			border-top: 1px solid #555566;
			border-left: 1px solid #555566;
		}
	}
</style>