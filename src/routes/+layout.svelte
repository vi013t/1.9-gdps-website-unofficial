<script lang="ts">
	import { afterNavigate } from "$app/navigation";
	import logo from "../assets/images/logo.png";
	import globalCss from "../global.css?url";

	let { children } = $props();

	afterNavigate(() => {
		window.scrollTo(0, 0);
		document.body.scrollTo(0, 0);
	})
</script>

<svelte:head>
	<link rel="stylesheet" href={globalCss} />
	<link rel="icon" href={logo} />
</svelte:head>

{@render children()}
