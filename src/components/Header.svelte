<script lang="ts">
	import type { Snippet } from "svelte";
	import type { HTMLAttributes } from "svelte/elements";
	import CheckIcon from "./icons/CheckIcon.svelte";
	import LinkIcon from "./icons/LinkIcon.svelte";

	let { id, element = "h2", children, ...attributes }: { id: string, element?: "h2" | "h1", children: Snippet } & HTMLAttributes<HTMLHeadingElement> = $props();

	let isOnCooldown = $state(false);

	let Icon = $state(LinkIcon);

	function copy() {
		navigator.clipboard.writeText(`${window.location.href}#${id}`);
		isOnCooldown = true;
		Icon = CheckIcon;
		setTimeout(() => {
			isOnCooldown = false;
			Icon = LinkIcon;
		}, 1000);
	}
</script>

<svelte:element class="heading" this={element} {...attributes}>
	{@render children()}
	<button onclick={copy}>
		<Icon stroke="#666688" style="width: 2rem; height: 2rem;" />
	</button>
</svelte:element>

<style>
	.heading {
		display: flex;
		align-items: center;
		gap: 1rem;
	}
</style>