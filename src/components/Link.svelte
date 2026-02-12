<script lang="ts">
	import type { Snippet } from 'svelte';
	import type { HTMLAttributes } from 'svelte/elements';
	import ExternalLinkIcon from './icons/ExternalLinkIcon.svelte';

	let { href, children, ...attributes }: { href: string; children?: Snippet } & HTMLAttributes<HTMLAnchorElement> = $props();

	let isExternal = $derived(!href.startsWith('/') && !href.startsWith("#"));
</script>

{#if isExternal}
	<a {href} {...attributes} target="_blank" rel="noopener noreferrer">
		{#if children}
			{@render children()}
		{:else}
			{href}
		{/if}
		<ExternalLinkIcon stroke="currentColor" style="width: 1em; height: 1em;" />
	</a>
{:else}
	<a {href} {...attributes}>
		{#if children}
			{@render children()}
		{:else}
			{href}
		{/if}
	</a>
{/if}

<style>
	a {
		color: #89b4fa;
		display: inline-flex;
		align-items: center;
		gap: 0.25em;
		position: relative;
		width: fit-content;

		&::after {
			content: '';
			position: absolute;
			width: 100%;
			height: 1px;
			top: 100%;
			left: 0px;
			background: transparent;
		}

		&:hover::after {
			background: currentColor;
		}
	}
</style>
