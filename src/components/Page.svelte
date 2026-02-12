<script lang="ts">
	import type { Snippet } from 'svelte';
	import Navbar from './Navbar.svelte';
	import Sidebar from './Sidebar.svelte';

	let { children, nosidebar = false }: { children: Snippet, nosidebar?: boolean } = $props();
</script>

<iframe width="1593" height="896" src="https://www.youtube.com/embed/xwjrHVtrzSo?autoplay=1&mute=1&showinfo=0&controls=0&modestbranding=1&rel=0&loop=1&playlist=xwjrHVtrzSo" title="(Extreme Demon) &#39;&#39;Another Ascent&#39;&#39; by Cersia | Geometry Dash" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<Navbar />
<main>
	{#if !nosidebar}
		<Sidebar />
	{/if}
	<section class="introduction section">
		{@render children()}
	</section>
</main>

<style>
	iframe {
		width: 100%;
		height: 100%;
		position: fixed;
		left: 0px;
		z-index: -1;
		pointer-events: none;
		filter: brightness(15%);
		scale: 110%;
		transform: translateY(-4%);
	}

	main {
		display: flex;
		width: 100%;

		* {
			z-index: 99;
		}

		.section {
			padding: 3rem;
			width: 60%;
			margin-left: auto;
			margin-right: auto;

			:global(code) {
				font-family: monospace;
				background: rgba(0, 0, 0, 40%);
				padding: 0.2em;
				border-radius: 0.3em;
			}

			:global(h1) {
				font-size: 3rem;
				color: white;
				font-weight: 500;
			}

			:global(h2) {
				font-size: 2rem;
				font-weight: 500;
				color: white;
			}

			:global(img) {
				max-width: 100%;
			}

			:global(p) {
				margin-top: 1rem;
				margin-bottom: 1rem;
				font-size: 1.25rem;
				color: #ccccff;
				line-height: 1.5em;
			}

			:global(.section) {
				background: #11111b;
				padding: 2rem;
				border: 2px solid #ccccff;
				border-radius: 1em;
				margin-top: 3rem;
				display: flex;
				flex-direction: column;
			}

			:global(i) {
				color: white;
			}

			:global(ul, li) {
				font-size: 1.25rem;
				color: #ccccff;
			}
		}
	}
</style>
