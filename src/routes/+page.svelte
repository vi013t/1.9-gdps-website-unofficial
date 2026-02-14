<script>
	import Logo from "../components/Logo.svelte";
	import Navbar from "../components/Navbar.svelte";
	import VideoBackground from "../components/VideoBackground.svelte";
</script>

<VideoBackground />
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
			font-family: "Google Sans Flex";
			color: white;
			text-shadow: 0px 0px 0.1em black;
		}

		p {
			font-size: 1.5rem;
			font-family: "Google Sans Flex";
			color: white;
			text-shadow: 0px 0px 0.1em black;
			margin-top: 1rem;
			text-align: center;
		}
	}

	.buttons {
		margin-top: 1rem;

		> * {
			background:
				linear-gradient(to bottom right, aquamarine, mediumspringgreen) padding-box,
				linear-gradient(to bottom right, transparent, white) border-box;
			border: 2px solid transparent;
			padding: 1rem;
			font-size: 1.2rem;
			border-radius: 0.5rem;
			box-shadow: 0px 0px 1em black;
			transition: scale 0.2s;
			width: 15rem;
			font-weight: 400;
			color: black;
			display: flex;
			align-items: center;
			justify-content: center;

			&:hover {
				scale: 108%;
			}
		}
	}
</style>
