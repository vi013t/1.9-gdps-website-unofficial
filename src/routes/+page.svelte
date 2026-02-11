<script>
	import Logo from '../components/Logo.svelte';
	import Navbar from '../components/Navbar.svelte';
</script>

<Navbar />
<main>
	<h1>GDPS</h1>
	<Logo size="30rem" />
	<p>Unofficial docs, links, and more for the 1.9 Geometry Dash Private Server.</p>
</main>

<style>
	main {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		gap: 2rem;
		height: calc(100% - 14rem);

		h1 {
			font-weight: bold;
			font-size: 10rem;
			font-family: 'Google Sans Flex';
		}

		p {
			font-size: 2rem;
			font-family: 'Google Sans Flex';
		}
	}
</style>

