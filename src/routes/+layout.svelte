<script lang="ts">
	let { children } = $props();
	import logo from "../assets/images/logo.png";
	import globalCss from "../global.css?url";
</script>

<svelte:head>
	<link rel="stylesheet" href={globalCss} />
	<link rel="icon" href={logo} />
</svelte:head>

{@render children()}
