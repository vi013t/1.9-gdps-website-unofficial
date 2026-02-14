<script lang="ts">
	import CheckIcon from './icons/CheckIcon.svelte';
	import CodeIcon from './icons/CodeIcon.svelte';
	import DiscordIcon from './icons/DiscordIcon.svelte';
	import DownloadIcon from './icons/DownloadIcon.svelte';
	import GeodeIcon from './icons/GeodeIcon.svelte';
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

	let visible = $derived(innerWidth > innerHeight);

	export function isHidden() {
		return visible;
	}
</script>

{#snippet link(text: string, href: string, top?: true)}
	<Link style="color: {top ? 'white' : '#ccccff'}; font-size: 1.2rem;" {href}>{text}</Link>
{/snippet}

<svelte:window bind:innerWidth bind:innerHeight />

<section style:transform="translateX({visible ? '0%' : '-100%'})" style:position={visible ? 'sticky' : 'fixed'}>
	<a href="/">
		<Logo size="3rem" />
		1.9 GDPS
	</a>

	<ul>
		<li>
			{@render link('Introduction', '/introduction', true)}
			<ul>
				<li>
					<QuestionMarkIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('What is the 1.9 GDPS?', '/introduction#what-is-gdps')}
				</li>
				<li>
					<DownloadIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Installation', '/introduction#installation')}
				</li>
				<li>
					<WrenchIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Troubleshooting', '/introduction#troubleshooting')}
				</li>
				<li>
					<RaceIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Getting Started', '/introduction#getting-started')}
				</li>
			</ul>
		</li>
		<li>
			{@render link('Using the 1.9 GDPS', '/using-the-gdps', true)}
			<ul>
				<li>
					<ModMenuIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('The Mod Menu', '/using-the-gdps#mod-menu')}
				</li>
				<li>
					<TransferIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Transferring Levels', '/using-the-gdps#transferring-levels')}
				</li>
				<li>
					<MusicNoteIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Reuploading Songs', '/using-the-gdps#reuplodaing-songs')}
				</li>
				<li>
					<StarIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Level Rates', '/using-the-gdps#level-rates')}
				</li>
			</ul>
		</li>
		<li>
			{@render link('Modding', '/modding', true)}
			<ul>
				<li>
					<GeodeIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Modding With Geode', '/modding#modding-with-geode')}
				</li>
				<li>
					<LightningIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('PolzHax', '/modding#polzhax')}
				</li>
				<li>
					<PlusIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Other Mods', '/modding#other-mods')}
				</li>
				<li>
					<PaintRollerIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Texture Packs', '/modding#texture-packs')}
				</li>
			</ul>
		</li>
		<li>
			{@render link('Resources', '/resources', true)}
			<ul>
				<li>
					<CheckIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Official Website', '/resources#official-website')}
				</li>
				<li>
					<DiscordIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Discord Server', '/resources#discord')}
				</li>
				<li>
					<CodeIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Source Code', '/resources#source-code')}
				</li>
				<li>
					<LinkIcon stroke="#ccccff" style="width: 1em; height: 1em;" />
					{@render link('Other Links', '/resources#other-links')}
				</li>
			</ul>
		</li>
	</ul>
</section>

<style>
	a {
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
	}

	section {
		font-size: 1rem;
		position: sticky;
		top: 0px;
		height: 100vh;
		background-image: linear-gradient(to bottom, #1e1e2e, #11111b);
		border-right: 2px solid #cdd6f4;
		width: fit-content;
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
