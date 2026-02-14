<script lang="ts">
	import { type Component } from 'svelte';
	import CheckIcon from './icons/CheckIcon.svelte';
	import CloseIcon from './icons/CloseIcon.svelte';
	import CodeIcon from './icons/CodeIcon.svelte';
	import DiscordIcon from './icons/DiscordIcon.svelte';
	import DownloadIcon from './icons/DownloadIcon.svelte';
	import GeodeIcon from './icons/GeodeIcon.svelte';
	import { type IconProps } from './icons/Icon.svelte';
	import LightningIcon from './icons/LightningIcon.svelte';
	import LinkIcon from './icons/LinkIcon.svelte';
	import ModMenuIcon from './icons/ModMenuIcon.svelte';
	import MusicNoteIcon from './icons/MusicNoteIcon.svelte';
	import PaintRollerIcon from './icons/PaintRollerIcon.svelte';
	import PlusIcon from './icons/PlusIcon.svelte';
	import QuestionMarkIcon from './icons/QuestionMarkIcon.svelte';
	import RaceIcon from './icons/RaceIcon.svelte';
	import StarIcon from './icons/StarIcon.svelte';
	import TransferIcon from './icons/TransferIcon.svelte';
	import WrenchIcon from './icons/WrenchIcon.svelte';
	import Link from './Link.svelte';
	import Logo from './Logo.svelte';

	let innerWidth = $state(0);
	let innerHeight = $state(0);
	let mobile = $derived(innerHeight > innerWidth);

	let visibleOverride = $state(false);
	let visible = $derived(visibleOverride || !mobile);

	export function isHidden() {
		return visible;
	}

	export function hide() {
		visibleOverride = false;
	}

	export function toggle() {
		visibleOverride = !visibleOverride;
	}
</script>

{#snippet link(text: string, href: string, Icon?: Component<IconProps>)}
	{#if Icon}
		<Icon stroke="#ccccff" style={mobile ? "width: 1.8em; height: 1.8em;" : "width: 1em; height: 1em;"} />
	{/if}
	<Link 
		onclick={() => hide()} 
		style="color: {Icon ? '#ccccff' : 'white'}; font-size: {mobile? "1.75rem" : "1.2rem"}; line-height: {mobile ? "1.5em" : "1.2em"};" {href}
	>
			{text}
	</Link>
{/snippet}

<svelte:window bind:innerWidth bind:innerHeight />

<section style:transform="translateX({visible ? '0%' : '-100%'})" style:position={visible && !mobile ? 'sticky' : 'fixed'}>

	{#if mobile}
		<div class="top">
			<Logo size="3rem" />
			1.9 GDPS
			<button onclick={() => hide()}>
				<CloseIcon stroke="white" style="width: 2rem; height: 2rem;" />
			</button>
		</div>
	{:else}
		<a class="top" href="/">
			<Logo size="3rem" />
			1.9 GDPS
		</a>
	{/if}

	<ul>
		<li>
			{@render link('Introduction', '/introduction')}
			<ul>
				<li>
					{@render link('What is the 1.9 GDPS?', '/introduction#what-is-gdps', QuestionMarkIcon)}
				</li>
				<li>
					{@render link('Installation', '/introduction#installation', DownloadIcon)}
				</li>
				<li>
					{@render link('Troubleshooting', '/introduction#troubleshooting', WrenchIcon)}
				</li>
				<li>
					{@render link('Getting Started', '/introduction#getting-started', RaceIcon)}
				</li>
			</ul>
		</li>
		<li>
			{@render link('Using the 1.9 GDPS', '/using-the-gdps')}
			<ul>
				<li>
					{@render link('The Mod Menu', '/using-the-gdps#mod-menu', ModMenuIcon)}
				</li>
				<li>
					{@render link('Transferring Levels', '/using-the-gdps#transferring-levels', TransferIcon)}
				</li>
				<li>
					{@render link('Reuploading Songs', '/using-the-gdps#reuploading-songs', MusicNoteIcon)}
				</li>
				<li>
					{@render link('Level Rates', '/using-the-gdps#level-rates', StarIcon)}
				</li>
			</ul>
		</li>
		<li>
			{@render link('Modding', '/modding')}
			<ul>
				<li>
					{@render link('Modding With Geode', '/modding#modding-with-geode', GeodeIcon)}
				</li>
				<li>
					{@render link('PolzHax', '/modding#polzhax', LightningIcon)}
				</li>
				<li>
					{@render link('Other Mods', '/modding#other-mods', PlusIcon)}
				</li>
				<li>
					{@render link('Texture Packs', '/modding#texture-packs', PaintRollerIcon)}
				</li>
			</ul>
		</li>
		<li>
			{@render link('Resources', '/resources')}
			<ul>
				<li>
					{@render link('Official Website', '/resources#official-website', CheckIcon)}
				</li>
				<li>
					{@render link('Discord Server', '/resources#discord', DiscordIcon)}
				</li>
				<li>
					{@render link('Source Code', '/resources#source-code', CodeIcon)}
				</li>
				<li>
					{@render link('Other Links', '/resources#other-links', LinkIcon)}
				</li>
			</ul>
		</li>
	</ul>
</section>

<style>
	@media(orientation: portrait) {
		section {
			width: 90vw;
			position: fixed;
			left: 0px;
			top: 0px;
			z-index: 99999;
			box-shadow: 0px 0px 2em black;
		}
	}

	@media(orientation: landscape) {
		section {
			width: fit-content;
			position: sticky;
			top: 0px;
		}
	}

	.top {
		display: flex;
		gap: 1rem;
		align-items: center;
		justify-content: center;
		color: #ddddff;
		font-weight: bold;
		background: #11111b;
		width: 100%;
		padding: 1rem 2rem 1rem 2rem;
		font-size: 2rem;

		button {
			margin-left: auto;
		}
	}

	section {
		font-size: 1rem;
		height: 100vh;
		background-image: linear-gradient(to bottom, #1e1e2e, #11111b);
		border-right: 2px solid #cdd6f4;
		transition: transform 0.1s;
	}

	li:not(:has(li)) {
		display: flex;
		gap: 0.5em;
		align-items: center;
		line-height: 1.7em;
	}

	ul ul {
		margin-left: 2rem;
		margin-bottom: 1rem;
	}

	ul:has(ul) {
		margin-top: 1rem;
		margin-left: 2rem;
		margin-right: 4rem;
	}
</style>
