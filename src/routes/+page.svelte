<script>
	import Logo from '../components/Logo.svelte';
	import Navbar from '../components/Navbar.svelte';
</script>

<iframe width="1593" height="896" src="https://www.youtube.com/embed/xwjrHVtrzSo?autoplay=1&mute=1&showinfo=0&controls=0&modestbranding=1&rel=0" title="(Extreme Demon) &#39;&#39;Another Ascent&#39;&#39; by Cersia | Geometry Dash" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<Navbar />
<main>
	<h1>GDPS</h1>
	<Logo size="20rem" />
	<p>Unofficial docs, links, and more for the 1.9 Geometry Dash Private Server.</p>

	<div class="buttons">
		<a href="/introduction">Get Started</a>
	</div>
</main>

<style>
	iframe {
		width: 100%;
		height: 100%;
		position: absolute;
		left: 0px;
		z-index: -1;
		pointer-events: none;
		filter: brightness(20%);
		scale: 110%;
		transform: translateY(-4%);
	}

	main {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		gap: 2rem;
		height: calc(100% - 4rem);
		position: relative;

		* {
			z-index: 99;
		}

		h1 {
			font-weight: bold;
			font-size: 8rem;
			font-family: 'Google Sans Flex';
			color: white;
			text-shadow: 0px 0px 0.1em black;
		}

		p {
			font-size: 1.5rem;
			font-family: 'Google Sans Flex';
			color: white;
			text-shadow: 0px 0px 0.1em black;
			margin-top: 1rem;
		}
	}

	.buttons {
		margin-top: 1rem;

		> * {
			background:
				linear-gradient(to bottom right, aquamarine, mediumspringgreen) padding-box,
				linear-gradient(to bottom right, transparent, #ccfffa) border-box;
			border: 2px solid transparent;
			padding: 1rem;
			font-size: 1.2rem;
			border-radius: 0.5rem;
			box-shadow: 0px 0px 1em black;
			transition: scale 0.2s;
			width: 10rem;
			font-weight: 400;
			color: black;

			&:hover {
				scale: 108%;
			}
		}
	}
</style>
