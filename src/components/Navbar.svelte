<script>
	import Logo from './Logo.svelte';
</script>

<nav>
	<Logo size="5rem" />
	<a>About</a>
	<a>Install</a>
	<a>Modding</a>
	<a>FAQ</a>
</nav>

<style>
	nav {
		display: flex;
		padding: 1rem;

		> * {
			display: flex;
			align-items: center;
			justify-content: center;
			font-family: 'Google Sans Flex';
			font-size: 2rem;
			padding-left: 2rem;
			padding-right: 2rem;

			&:first-of-type {
				padding-left: 3rem;
			}
		}
	}
</style>
