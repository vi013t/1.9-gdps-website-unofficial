<script lang="ts">
	import type { Snippet } from "svelte";
	import type { HTMLAttributes } from "svelte/elements";
	import CheckIcon from "./icons/CheckIcon.svelte";
	import LinkIcon from "./icons/LinkIcon.svelte";

	let { id, element = "h2", children, ...attributes }: { id: string, element?: "h2" | "h1", children: Snippet } & HTMLAttributes<HTMLHeadingElement> = $props();

	let isOnCooldown = $state(false);

	let Icon = $state(LinkIcon);

	let open = $state(true);

	function toggleOpen(event: MouseEvent) {
		let parent = (event.target as HTMLElement).parentElement!.parentElement!;
		parent.style.maxHeight = open ? parent.previousElementSibling ? "6.1rem" : "7.25rem" : "400rem";
		open = !open;
	}

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

<svelte:element class="heading" this={element} {...attributes} {id}>
	{@render children()}
	<button onclick={copy}>
		<Icon stroke="#666688" style="width: 2rem; height: 2rem;" />
	</button>
	<button title="toggle collapse" style:--rotation={open ? "0deg" : "-90deg"} onclick={toggleOpen}></button>
</svelte:element>

<style>
	.heading {
		display: flex;
		align-items: center;
		gap: 1rem;
	}

	button:last-child {
		width: 0.75rem;
		height: 0.75rem;
		border-left: 0.75rem solid transparent;
		border-right: 0.75rem solid transparent;
		border-bottom: 0.75rem solid transparent;
		border-top: 0.75rem solid #ccccff;
		transform-origin: 50% 0%;
		transform: translateY(40%) rotate(var(--rotation));
		transition: transform 0.1s;
		margin-left: auto;
	}
</style>