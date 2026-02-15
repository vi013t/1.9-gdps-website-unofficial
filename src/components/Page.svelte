<script lang="ts">
	import type { Snippet } from 'svelte';
	import RightArrowIcon from './icons/RightArrowIcon.svelte';
	import Navbar from './Navbar.svelte';
	import Sidebar from './Sidebar.svelte';
	import VideoBackground from './VideoBackground.svelte';

	let {
		children,
		nosidebar = false,
		next = undefined,
		previous = undefined
	}: {
		children: Snippet;
		nosidebar?: boolean;
		next?: { url: string; text: string };
		previous?: { url: string; text: string };
	} = $props();

	let sidebar: Sidebar | null = $state(null);
</script>

<VideoBackground />
<Navbar {sidebar} />
<main>
	{#if !nosidebar}
		<Sidebar bind:this={sidebar} />
	{/if}
	<article>
		{@render children()}

		<div class="nav-buttons">
			{#if previous}
				<a class="previous" href={previous.url}>
					<RightArrowIcon stroke="black" style="width: 1rem; height: 1rem; rotate: 180deg;" />
					{previous.text}
				</a>
			{/if}
			{#if next}
				<a class="next" href={next.url}>
					{next.text}
					<RightArrowIcon stroke="black" style="width: 1rem; height: 1rem;" />
				</a>
			{/if}
		</div>
	</article>
</main>

<style>
	main {
		display: flex;
		width: 100%;

		* {
			z-index: 99;
		}

		@media (orientation: landscape) {
			article {
				width: 60%;
			}
		}

		@media (orientation: portrait) {
			article {
				width: 100%;
			}
		}

		article {
			padding: 3rem;
			margin-left: auto;
			margin-right: auto;
			display: flex;
			flex-direction: column;

			:global(code) {
				font-family: monospace;
				background: rgba(0, 0, 0, 40%);
				padding: 0.2em;
				border-radius: 0.3em;
				display: inline;
				color: white;

				&.block {
					padding: 1em;
					display: block;
				}
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
				scroll-margin-top: 2em;
			}

			:global(h3) {
				font-size: 1.5rem;
				font-weight: 500;
				color: white;
				margin-bottom: 1rem;
				margin-top: 1rem;
			}

			:global(b) {
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

			:global(hr) {
				width: 100%;
				height: 2px;
				background-color: #4e4e6e;
				margin-bottom: 1rem;
				margin-top: 1rem;
			}

			:global(summary) {
				color: white;
				font-size: 1.25rem;
				cursor: pointer;
			}

			:global(details > *:nth-child(2)) {
				margin-top: 1rem;
			}

			:global(details) {
				background-color: #313255;
				padding: 1rem;
				border-radius: 0.5em;

				:global(details) {
					background-color: #1e1e2e;
				}

				:global(img) {
					border: 2px solid #cdd6f4;
					border-radius: 0.5em;
					box-shadow: 0px 0px 0.5em black;
				}
			}

			:global(section) {
				background: linear-gradient(to bottom right, #1e1e2e, #11111b);
				padding: 2rem;
				border: 2px solid #ccccff;
				border-radius: 1em;
				margin-top: 3rem;
				display: flex;
				flex-direction: column;
				box-shadow: 0px 0px 1rem black;
				overflow: hidden;
				transition: height 0.2s;
			}
			
			:global(details + details) {
				margin-top: 1rem;
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

	a {
		width: 15rem;
		color: black;
		border-radius: 0.5rem;
		transition: scale 0.1s;
		box-shadow: 0px 0px 1em black;
		text-align: center;
		display: inline-flex;
		align-items: center;
		justify-content: center;
		height: 3em;
		font-size: 1rem;
		gap: 0.5em;
		font-weight: 500;

		&:hover {
			scale: 108%;
			text-decoration: none;
		}
	}

	.nav-buttons {
		margin-top: 2rem;
		display: flex;
		justify-content: center;
		gap: 3rem;
	}

	.previous {
		background-image: linear-gradient(to bottom right, #fab387, #f38ba8);
	}

	.next {
		background-image: linear-gradient(to bottom right, #94e2d5, #a6e3a1);
	}
</style>
