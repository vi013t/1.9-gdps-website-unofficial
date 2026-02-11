<script>
	import Logo from './Logo.svelte';
</script>

<nav>
	<a>
		<Logo size="3rem" />
	</a>
	<a>About</a>
	<a>Install</a>
	<a>Modding</a>
	<a>FAQ</a>
</nav>

<style>
	nav {
		display: flex;
		width: 100%;
		box-shadow: 0px 0px 1rem black;
		z-index: 999;

		> * {
			display: flex;
			align-items: center;
			justify-content: center;
			font-size: 1.5rem;
			padding-left: 1.5rem;
			padding-right: 1.5rem;
			padding-bottom: 0.5rem;
			padding-top: 0.5rem;
		}

	}
</style>
