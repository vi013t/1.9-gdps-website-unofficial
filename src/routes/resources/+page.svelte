<script lang="ts">
	import CodeIcon from "../../components/icons/CodeIcon.svelte";
	import DiscordIcon from "../../components/icons/DiscordIcon.svelte";
	import Link from "../../components/Link.svelte";
	import Page from "../../components/Page.svelte";
</script>

{#snippet sourceCodeLink(name: string, link: string)}
	<Link style="color: white; font-size: 1.4rem; font-weight: 500;" href={link}>{name}</Link>
{/snippet}

<Page previous={{ text: "Modding", url: "/modding" }}>
	<div class="section">
		<h1>Resources</h1>

		<p>
			The 1.9 GDPS is a relatively smaller project compared to the official 2.2 version of the game, so it can be hard to find support and resources relating to it. Here I've compiled a bunch of useful links and community resources for your 1.9 GDPS needs.
		</p>
	</div>

	<div class="section">
		<h2>Official Website</h2>

		<p>
			First and foremost, consider checking out <Link href="https://19gdps.com">the official 1.9 GDPS website</Link>. There's a lot of useful tools and pages, and any information provided there is provided by official GDPS staff members (as far as I know), and therefore it's the most likely place to contain the best and most accurate information on the 1.9 GDPS.
		</p>
	</div>

	<div class="section">
		<h2 id="discord-server">Discord Server</h2>

		<p>
			The official 1.9 GDPS discord server is the best place for support relating to the 1.9 GDPS. There are channels for modding, level feedback, general support, and more. Join here:
		</p>

		<a href="https://discord.gg/eCGFrCG" class="discord">
			<DiscordIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
			Join the Discord
		</a>

		<p>
			By default, the <b>modding</b> channel may not be visible. You can use <Link href="https://discord.com/channels/328307969882062848/1399882752068948039">this link</Link> to access it and add it to your channel list.
		</p>
	</div>

	<div class="section">
		<h2 id="source-code">Source Code</h2>

		<p>
			If you're interested in the source code for various 1.9 GDPS related things, some relevant ones are accesible here:
		</p>

		<div class="source-codes">
			<div>
				{@render sourceCodeLink("1.9 GDPS", "https://github.com/absoIute/1.9-GDPS")}

				The source code for the 1.9 private server itself.

				<a href="https://github.com/absoIute/1.9-GDPS">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;"/>
					View Source Code
				</a>
			</div>
			<div>
				{@render sourceCodeLink("GDPS", "https://github.com/Cvolton/GMDprivateServer/")}

				The source code for the generic Geometry Dash server emulator. This supports all versions of the game, and is what the 1.9 GDPS is built on.

				<a href="https://github.com/Cvolton/GMDprivateServer/">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;"/>
					View Source Code
				</a>
			</div>
			<div>
				{@render sourceCodeLink("1.9 GDPS Android", "https://github.com/qimiko/gdps-public")}

				The source code for the android build of the 1.9 GDPS.

				<a href="https://github.com/qimiko/gdps-public">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;"/>
					View Source Code
				</a>
			</div>
			<div>
				{@render sourceCodeLink("Unofficial 1.9 GDPS Website", "https://github.com/vi013t/1.9-gdps-website-unofficial")}

				The source code for this website.

				<a href="https://github.com/vi013t/1.9-gdps-website-unofficial">
					<CodeIcon stroke="white" style="width: 1.5em; height: 1.5em;"/>
					View Source Code
				</a>
			</div>
		</div>
	</div>
</Page>

<style>
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

	@media(max-width: 1900px) {
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