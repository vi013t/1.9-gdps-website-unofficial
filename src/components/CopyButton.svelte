<script lang="ts">
	import CheckIcon from "./icons/CheckIcon.svelte";
	import CopyIcon from "./icons/CopyIcon.svelte";
	import type { IconProps } from "./icons/Icon.svelte";

	let { text, ...attributes }: { text: string } & IconProps = $props();

	let Icon = $state(CopyIcon);
	let isOnCooldown = $state(false);

	function copy() {
		navigator.clipboard.writeText(text);
		isOnCooldown = true;
		Icon = CheckIcon;
		setTimeout(() => {
			isOnCooldown = false;
			Icon = CopyIcon;
		}, 1000);
	}
</script>

<button onclick={copy}>
	<Icon {...attributes} />
</button>