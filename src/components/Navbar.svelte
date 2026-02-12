<script>
	import Logo from './Logo.svelte';
</script>

<nav>
	<a href="/">
		<Logo size="3rem" />
	</a>
	<a href="/introduction">Docs</a>
	<a href="https://demonlist.19gdps.com/demonlist">Demon List</a>
	<a>FAQ</a>
</nav>

<style>
	nav {
		display: flex;
		width: 100%;
		box-shadow: 0px 0px 1rem black;
		z-index: 9999;
		background-color: white;

		> * {
			display: flex;
			align-items: center;
			justify-content: center;
			font-size: 1.5rem;
			padding-left: 1.5rem;
			padding-right: 1.5rem;
			padding-bottom: 0.5rem;
			padding-top: 0.5rem;
			color: black;
		}
	}
</style>
