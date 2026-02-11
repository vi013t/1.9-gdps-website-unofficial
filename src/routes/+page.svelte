<script>
	import background from "../assets/images/background.png";
	import Logo from '../components/Logo.svelte';
	import Navbar from '../components/Navbar.svelte';
</script>

<Navbar />
<main style:--background="url('{background}')">
	<h1>GDPS</h1>
	<Logo size="20rem" />
	<p>Unofficial docs, links, and more for the 1.9 Geometry Dash Private Server.</p>

	<div class="buttons">
		<button>Get Started</button>
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
		background-color: rgba(0, 0, 80, 80%);

		* {
			z-index: 99;
		}

		&::before {
			position: absolute;
			top: 0px;
			left: 0px;
			width: 100%;
			height: 100%;
			content: "";
			background-image: var(--background);
			background-size: cover;
			background-position: center;
			mix-blend-mode: multiply;
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

		button {
			background: 
				linear-gradient(to bottom right, aquamarine, mediumspringgreen) padding-box,
				linear-gradient(to bottom right, transparent, #CCFFFA) border-box;
			border: 2px solid transparent;
			padding: 1rem;
			font-size: 1.2rem;
			border-radius: 0.5rem;
			box-shadow: 0px 0px 1em black;
			transition: scale 0.2s;
			width: 10rem;
			font-weight: 400;

			&:hover {
				scale: 108%;
			}
		}
	}
</style>

