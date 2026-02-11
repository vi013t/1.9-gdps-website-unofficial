<script lang="ts">
	let { children } = $props();
	import globalCss from "../global.css?url";
</script>

<svelte:head>
	<link rel="stylesheet" href={globalCss} />
</svelte:head>

{@render children()}
