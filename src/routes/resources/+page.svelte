<script lang="ts">
	import BlueskyIcon from '../../components/icons/BlueskyIcon.svelte';
	import CodeIcon from '../../components/icons/CodeIcon.svelte';
	import DiscordIcon from '../../components/icons/DiscordIcon.svelte';
	import GithubIcon from '../../components/icons/GithubIcon.svelte';
	import InternetIcon from '../../components/icons/InternetIcon.svelte';
	import SpotifyIcon from '../../components/icons/SpotifyIcon.svelte';
	import SteamIcon from '../../components/icons/SteamIcon.svelte';
	import TwitterIcon from '../../components/icons/TwitterIcon.svelte';
	import YoutubeIcon from '../../components/icons/YoutubeIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

{#snippet sourceCodeLink(name: string, link: string)}
	<Link style="color: white; font-size: 1.4rem; font-weight: 500;" href={link}>{name}</Link>
{/snippet}

<Page previous={{ text: 'Modding', url: '/modding' }}>
	<section>
		<h1>Resources</h1>

		<p>
			The 1.9 GDPS is a relatively smaller project compared to the official 2.2 version of the game, so it can be hard to find support and resources
			relating to it. Here I've compiled a bunch of useful links and community resources for your 1.9 GDPS needs.
		</p>
	</section>

	<section>
		<h2 id="official-website">Official Website</h2>

		<p>
			First and foremost, consider checking out <Link href="https://19gdps.com">the official 1.9 GDPS website</Link>. There's a lot of useful tools
			and pages, and any information provided there is provided by official GDPS staff members (as far as I know), and therefore it's the most likely
			place to contain the best and most accurate information on the 1.9 GDPS.
		</p>
	</section>

	<section>
		<h2 id="discord">Discord Server</h2>

		<p>
			The official 1.9 GDPS discord server is the best place for support relating to the 1.9 GDPS. There are channels for modding, level feedback,
			general support, and more. Join here:
		</p>

		<a target="_blank" rel="noopener noreferrer" href="https://discord.gg/eCGFrCG" class="discord">
			<DiscordIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
			Join the Discord
		</a>

		<p>
			By default, the <b>modding</b> channel may not be visible. You can use <Link
				href="https://discord.com/channels/328307969882062848/1399882752068948039">this link</Link
			> to access it and add it to your channel list.
		</p>
	</section>

	<section>
		<h2 id="source-code">Source Code</h2>

		<p>If you're interested in the source code for various 1.9 GDPS related things, some relevant ones are accesible here:</p>

		<div class="source-codes">
			<div>
				{@render sourceCodeLink('1.9 GDPS', 'https://github.com/absoIute/1.9-GDPS')}

				The source code for the 1.9 private server itself.

				<a target="_blank" rel="noopener noreferrer" href="https://github.com/absoIute/1.9-GDPS">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
					View Source Code
				</a>
			</div>
			<div>
				{@render sourceCodeLink('GDPS', 'https://github.com/Cvolton/GMDprivateServer/')}

				The source code for the generic Geometry Dash server emulator. This supports all versions of the game, and is what the 1.9 GDPS is built on.

				<a target="_blank" rel="noopener noreferrer" href="https://github.com/Cvolton/GMDprivateServer/">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
					View Source Code
				</a>
			</div>
			<div>
				{@render sourceCodeLink('1.9 GDPS Android', 'https://github.com/qimiko/gdps-public')}

				The source code for the android build of the 1.9 GDPS.

				<a target="_blank" rel="noopener noreferrer" href="https://github.com/qimiko/gdps-public">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
					View Source Code
				</a>
			</div>
			<div>
				{@render sourceCodeLink('Unofficial 1.9 GDPS Website', 'https://github.com/vi013t/1.9-gdps-website-unofficial')}

				The source code for this website.

				<a target="_blank" rel="noopener noreferrer" href="https://github.com/vi013t/1.9-gdps-website-unofficial">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
					View Source Code
				</a>
			</div>
		</div>
	</section>

	<section>
		<h2 id="other-links">Other Links</h2>

		<p>Here are some other miscellaneous links relating to the 1.9 GDPS:</p>

		<div class="buttons">
			<a href="https://www.youtube.com/channel/UCIUpOcn9GZ-IlEw34czouIg" class="youtube" target="_blank" rel="noopener noreferrer">
				<YoutubeIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				1.9 GDPS YouTube
			</a>
			<a href="https://twitter.com/official19gdps" class="twitter" target="_blank" rel="noopener noreferrer">
				<TwitterIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				1.9 GDPS Twitter
			</a>
			<a href="https://bsky.app/profile/19gdps.bsky.social" class="bluesky" target="_blank" rel="noopener noreferrer">
				<BlueskyIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				1.9 GDPS BlueSky
			</a>
			<a href="https://discord.gg/4h6yHgE4Gj" class="discord" target="_blank" rel="noopener noreferrer">
				<DiscordIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				PolzHax Discord
			</a>
		</div>

		<p>
			Please please <i>please</i> support the official 1.9 GDPS staff. They are the most awesomesauce people ever! Some of their info is here:
		</p>

		<hr />

		<h3>Qimiko <span class="pronouns">(she/they)</span> - GDPS 1.9 Owner</h3>

		<div class="buttons">
			<a href="https://xyze.dev/" class="website" target="_blank" rel="noopener noreferrer">
				<InternetIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				xyze.dev
			</a>
			<a href="https://github.com/qimiko" class="github" target="_blank" rel="noopener noreferrer">
				<GithubIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				@qimiko
			</a>
			<a href="https://bsky.app/profile/did:plc:keisthfwxrsqy7hjyr4augjc" class="bluesky" target="_blank" rel="noopener noreferrer">
				<BlueskyIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				@xyze.dev
			</a>
			<a href="https://twitter.com/i/user/3085762589" class="twitter" target="_blank" rel="noopener noreferrer">
				<TwitterIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				@qvxmiko
			</a>
			<a href="https://www.youtube.com/channel/UC7Gq7E3J7ZOb9AjMV1qHBdg" class="youtube" target="_blank" rel="noopener noreferrer">
				<YoutubeIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				@qjivxn
			</a>
			<a href="https://discord.com/users/100711360979034112" class="discord" target="_blank" rel="noopener noreferrer">
				<DiscordIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				@qimiko
			</a>
			<a href="https://steamcommunity.com/profiles/76561198857580624" class="steam" target="_blank" rel="noopener noreferrer">
				<SteamIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				miko!
			</a>
			<a href="https://open.spotify.com/user/jc7p82l93fj59aqe74a85ih6g" class="spotify" target="_blank" rel="noopener noreferrer">
				<SpotifyIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				chloe
			</a>
		</div>

		<hr />

		<h3>Sam - GDPS 1.9 Owner</h3>

		<div class="buttons">
			<a href="https://discord.com/users/213411781303861250" class="discord" target="_blank" rel="noopener noreferrer">
				<DiscordIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
				@hsam
			</a>
		</div>

		<hr />

		<ul>
			<li>
				<b><Link href="https://absolllute.com/">Absolute</Link></b> - GDPS Creator
			</li>
			<li>
				<b><Link href="https://discord.com/users/150040671443484673">Great</Link></b> - GDPS Admin
			</li>
		</ul>

		<hr/>

		<ul>
			<li>
				<b><Link href="https://discord.com/users/1287889621736361987">Aroo</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/293696789008089089">Brighty</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/900131076691853374">Celeste</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/294481013562802176">GrenadeOfTacos</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/473979645214195732">Jackalope</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/232901003354177546">Kz04</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/226181342348574720">Manu</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/562276976564371456">Purple Popcorn</Link></b> - GDPS Moderator
			</li>
			<li>
				<b><Link href="https://discord.com/users/1204103833568157756">YouKnowWho</Link></b> - GDPS Moderator
			</li>
		</ul>
	</section>
</Page>

<style>
	.pronouns {
		color: #7e7e9e;
		font-style: italic;
		margin-right: 0.2em;
	}

	.bluesky {
		background-color: #1185fe;
		color: white;
	}

	.github {
		background-image: linear-gradient(to bottom right, #444455, #333344);
	}

	.steam {
		background-image: linear-gradient(to bottom right, #444455, #333344);
	}

	.website {
		background-image: linear-gradient(to bottom right, #ff9e30, #c66a0d);
	}
	
	.spotify {
		background-image: linear-gradient(to bottom right, #25c95e, #158b3f);
	}

	.buttons {
		display: flex;
		gap: 2rem 3rem;
		justify-content: center;
		margin-top: 1rem;
		margin-bottom: 1rem;
		flex-wrap: wrap;

		> * {
			margin: 0px;
		}
	}

	.twitter {
		background-color: #26a7de;
		color: white;
	}

	.youtube {
		background: #cd201f;
		color: white;
	}

	a {
		width: 15rem;
		color: white;
		border-radius: 0.5rem;
		transition: scale 0.1s;
		box-shadow: 0px 0px 1em black;
		text-align: center;
		display: inline-flex;
		align-items: center;
		justify-content: center;
		height: 3em;
		font-size: 1rem;
		gap: 0.5em;
		font-weight: 500;
		margin-left: auto;
		margin-right: auto;
		margin-bottom: 1rem;
		margin-top: 1rem;
		flex-shrink: 0;

		&:hover {
			scale: 108%;
			text-decoration: none;
		}
	}

	.discord {
		background-image: linear-gradient(to bottom right, #5865f2, #3e48ad);
	}

	.source-codes {
		display: flex;
		flex-wrap: wrap;
		gap: 2rem;
		margin-top: 2rem;

		> * {
			width: 20rem;
			background: linear-gradient(to bottom right, #1e1e2e, #181825);
			border-radius: 1em;
			color: #ccccff;
			display: flex;
			flex-direction: column;
			padding: 1rem;
			gap: 1rem;
			border: 2px solid #aaaadd;
			height: 15rem;
			box-shadow: 0px 0px 1em black;
		}

		a {
			margin-left: auto;
			margin-right: auto;
			margin-top: auto;
			font-size: 0.8rem;
			background-image: linear-gradient(to bottom right, #444455, #333344);
		}
	}

	@media (orientation: portrait) {
		.source-codes {
			width: 100%;
			flex-direction: column;
			align-items: center;

			> * {
				height: 16rem;
			}
		}
	}
</style>
