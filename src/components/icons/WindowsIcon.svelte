<script lang="ts">
	import type { IconProps } from "./Icon.svelte";

	let { stroke, ...rest }: IconProps = $props();
</script>

<svg
	{...rest}
	height="200px"
	width="200px"
	version="1.1"
	id="Capa_1"
	xmlns="http://www.w3.org/2000/svg"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	viewBox="0 0 19.132 19.132"
	xml:space="preserve"
	fill={stroke}
	><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g
		id="SVGRepo_iconCarrier"
	>
		<g>
			<g>
				<path style="fill:{stroke};" d="M9.172,9.179V0.146H0v9.033H9.172z"></path>
				<path style="fill:{stroke};" d="M19.132,9.179V0.146H9.959v9.033H19.132z"></path>
				<path style="fill:{stroke};" d="M19.132,18.986V9.955H9.959v9.032H19.132z"></path>
				<path style="fill:{stroke};" d="M9.172,18.986V9.955H0v9.032H9.172z"></path>
			</g>
		</g>
	</g></svg
>
