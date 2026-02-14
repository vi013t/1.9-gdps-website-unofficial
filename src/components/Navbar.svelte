<script>
	import progressFlag from "../assets/images/progress_flag.png";
	import NotAllowedIcon from './icons/NotAllowedIcon.svelte';
	import RobotIcon from './icons/RobotIcon.svelte';
	import Logo from './Logo.svelte';
	import Tooltip from "./Tooltip.svelte";

	let showAiTooltip = $state(false);
	let showProgressTooltip = $state(false);

	let innerWidth = $state(0);
	let innerHeight = $state(0);
</script>

<svelte:window bind:innerWidth bind:innerHeight />

<nav>
	<a href="/">
		<Logo size="3rem" />
	</a>
	<a href="/introduction">Docs</a>
	<a href="/demon-list">Demon List</a>

	{#if innerWidth > innerHeight}
		<div class="no-ai" onmouseenter={() => showAiTooltip = true} onmouseleave={() => showAiTooltip = false} role="tooltip">
			<RobotIcon stroke="black" style="width: 1.5em; height: 1.5em; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);" />
			<NotAllowedIcon stroke="red" style="width: 1.5em; height: 1.5em; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);" />
			<Tooltip bind:visible={showAiTooltip}>No AI was used in the making of this website.</Tooltip>
		</div>

		<div onmouseenter={() => showProgressTooltip = true} onmouseleave={() => showProgressTooltip = false} role="tooltip">
			<img src={progressFlag} alt="progress flag"/>
			<Tooltip bind:visible={showProgressTooltip}>This website supports DEI, LGBTQ+, and trans rights!</Tooltip>
		</div>
	{/if}
</nav>

<style>
	nav {
		display: flex;
		width: 100%;
		box-shadow: 0px 0px 1rem black;
		z-index: 9999;
		background-color: white;
		gap: 2rem;
		align-items: center;
		padding-right: 2rem;
		padding-left: 1.4rem;

		> * {
			display: flex;
			align-items: center;
			justify-content: center;
			font-size: 1.5rem;
			padding-left: 0.5rem;
			padding-right: 0.5rem;
			padding-bottom: 0.5rem;
			padding-top: 0.5rem;
			color: black;
			transition: scale 0.2s;

			&:is(a):hover {
				scale: 108%;
			}
		}

		.no-ai {
			margin-left: auto;
			position: relative;
			width: 3rem;
			height: 3rem;
			aspect-ratio: 1;
			padding: 0px;
			display: flex;
			align-items: center;
			justify-content: center;
		}

		:has(> img) {
			position: relative;
			padding: 0px;
			height: 3rem;
			display: flex;
			align-items: center;
			justify-content: center;

			img {
				height: 2rem;
			}
		}
	}
</style>
