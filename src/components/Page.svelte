<script lang="ts">
	import Navbar from './Navbar.svelte';
	import Sidebar from './Sidebar.svelte';
	import background from '../assets/images/background.png';
	import type { Snippet } from 'svelte';

	let { children }: { children: Snippet } = $props();
</script>

<Navbar />

<main style:--background="url('{background}')">
	<Sidebar />
	<section class="introduction section">
		{@render children()}
	</section>
</main>

<style>
	main {
		display: flex;

		* {
			z-index: 99;
		}

		&::before {
			position: fixed;
			top: 0px;
			left: 0px;
			width: 100%;
			height: 100%;
			content: '';
			background-image: var(--background);
			background-size: cover;
			background-position: center;
			filter: brightness(20%) saturate(150%);
			z-index: -1;
		}

		.section {
			padding: 3rem;
			width: 60%;

			:global(code) {
				font-family: monospace;
				background: rgba(0, 0, 0, 40%);
				padding: 0.2em;
				border-radius: 0.3em;
			}

			:global(h1) {
				font-size: 3rem;
				color: #ddddff;
				font-weight: 500;
			}

			:global(h2) {
				font-size: 2rem;
				margin-top: 3rem;
				font-weight: 500;
				color: #ddddff;
			}

			:global(img) {
				max-width: 100%;
			}

			:global(p) {
				margin-top: 1rem;
				margin-bottom: 1rem;
				font-size: 1.25rem;
				color: #ddddff;
			}

			:global(ul, li) {
				font-size: 1.25rem;
				color: #ddddff;
			}
		}
	}
</style>
