<script lang="ts">
	let { children } = $props();
	import globalCss from '../../global.css?url';
</script>

<svelte:head>
	<link rel="stylesheet" href={globalCss} />
	<title>1.9 GDPS - Introduction</title>
</svelte:head>

{@render children()}
