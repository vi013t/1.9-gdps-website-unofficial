<script>
	import progressFlag from "../assets/images/progress_flag.png";
	import NotAllowedIcon from './icons/NotAllowedIcon.svelte';
	import RobotIcon from './icons/RobotIcon.svelte';
	import Logo from './Logo.svelte';
	import Tooltip from "./Tooltip.svelte";

	let showAiTooltip = $state(false);
	let showProgressTooltip = $state(false);
</script>

<nav>
	<a href="/">
		<Logo size="3rem" />
	</a>
	<a href="/introduction">Docs</a>
	<a href="/demon-list">Demon List</a>
	<a>FAQ</a>

	<div class="no-ai" onmouseenter={() => showAiTooltip = true} onmouseleave={() => showAiTooltip = false}>
		<RobotIcon stroke="black" style="width: 1.5em; height: 1.5em; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);" />
		<NotAllowedIcon stroke="red" style="width: 1.5em; height: 1.5em; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);" />
		<Tooltip bind:visible={showAiTooltip}>No AI was used in the making of this website.</Tooltip>
	</div>

	<div onmouseenter={() => showProgressTooltip = true} onmouseleave={() => showProgressTooltip = false}>
		<img src={progressFlag} alt="progress flag"/>
		<Tooltip bind:visible={showProgressTooltip}>This website supports DEI, LGBTQ+, and trans rights!</Tooltip>
	</div>
</nav>

<style>
	nav {
		display: flex;
		width: 100%;
		box-shadow: 0px 0px 1rem black;
		z-index: 9999;
		background-color: white;
		padding-right: 1rem;

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

		.no-ai {
			margin-left: auto;
			position: relative;
			height: 100%;
			aspect-ratio: 1;
			margin-top: 0.5rem;
		}

		:has(img) {
			position: relative;
			img {
				height: 2rem;
			}
		}
	}
</style>
