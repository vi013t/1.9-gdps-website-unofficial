<script lang="ts">
	import modsButton from "../../assets/images/mods_button.png";
	import optionsButton from "../../assets/images/options_button.png";
	import DownloadIcon from '../../components/icons/DownloadIcon.svelte';
	import GeodeIcon from '../../components/icons/GeodeIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

{#snippet modLink(name: string, link: string)}
	<Link style="color: white; font-size: 1.4rem; font-weight: 500;" href={link}>{name}</Link>
{/snippet}

<Page previous={{ text: "Using the 1.9 GDPS", url: "/use" }} next={{ text: "Resources", url: "/resources" }}>

	<div class="section">
		<h1>Modding</h1>

		<p>
			<b>Mods</b> allow users to add or change features within the game.
		</p>
	</div>

	<div class="section">
	<h2 id="modding-with-geode">Modding With Geode</h2>

	<p>
		<Link href="https://geode-sdk.org/">Geode</Link> is a mod loader for Geometry Dash, and is currently the only widely used and supported one that exists.
		You can think of Geode a bit like a soda machine, where mods are sodas and Geode acts as a container and mixer for them. While Geode is used in modern
		Geometry Dash 2.2, there also exists a build for 1.9 that's built into the 1.9 GDPS.
	</p>

	<p>
		In Geode, A "mod" is just a file (typically ending in <code>.geode</code>). These mods are written in code (generally C++) by the community and
		then bundled into a singular <code>.geode</code> file. From there, Geode does the heavy lifting and understands how to interpret these files and actually
		apply the changes to your game.
	</p>

	<p>All of this is to say, loading a mod in the 1.9 GDPS is as simple as giving Geode the file. Geode already comes with the 1.9 GDPS by default.</p>

	<p>To access Geode for the first time, go to any level and click the settings icon in the upper left:</p>

	<img src={optionsButton} alt="options button" />

	<p>From there, click the Mods button on the bottom:</p>

	<img src={modsButton} alt="mods button" />

	<p>This will take you into Geode.</p>
</div>

<div class="section">
	<h2 id="polzhax">PolzHax</h2>

	<p>
		<Link href="https://github.com/Pololak/PolzHax">PolzHax</Link> is probably the most used and fleshed-out mod currently available for the 1.9 GDPS, made
		by <Link href="https://github.com/Pololak">Pololak</Link>. It's a suite of quality-of-life tools and utilities such as changing the game speed,
		increasing levels' object limits, bypassing the default frames per second, and more. It's analogous to the famous <Link
			href="https://absolllute.com/store/mega_hack">Megahack</Link
		> mod used Geometry Dash 2.2:
	</p>

	<img src="https://github.com/Pololak/PolzHax/blob/main/image-110.png?raw=true" alt="polzhax" />

	<p>You can download the PolzHax Geode file here:</p>

	<div class="download">
		<a class="download-button" href="/download/pololak.polzhax.geode" download>
			<GeodeIcon stroke="black" style="width: 1.3em; height: 1.3em;" />
			PolzHack Geode File
		</a>
	</div>

	<p>
		Once you have the <code>pololok.polzhax.geode</code> file, follow <Link href="#modding-with-geode">the instructions above</Link> to install it into
		Geode and load it into your game. Using PolzHax is as simple as pressing <code>tab</code> to toggle the overlay, and changing the options you want.
		Hovering over an option will tell you what it does.
	</p>
</div>

<div class="section">
	<h2 id="other-mods">Other Mods</h2>

	<p>Outside of PolzHax and PolzEdit, there exists a few smaller utility mods for the 1.9 GDPS, listed here:</p>

	<div class="other-mods">
		<div>
			{@render modLink("Audio Offset Calculator", "https://github.com/Kingminer7/AudioOffsetCalculator/releases/tag/1.1.4-1.9")}

			Allows easily setting music offsets.
			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>

		<div>
			{@render modLink("Confirm Exit", "https://github.com/solstacoded/confirm_exit_19/releases/latest")}
			
			Adds a confirmation screen when exiting a level. Note that PolzHax also comes with this built in.

			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>
		<div>
			{@render modLink("Hjfod's Backups", "https://github.com/HJfod/gd-backup")}

			Adds a backup button to back up user data.
			
			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>

		<div>
			{@render modLink("PolzEditor", "https://github.com/Kingminer7/AudioOffsetCalculator/releases/tag/1.1.4-1.9")}

			Subset of PolzHax with only the editor-related features.

			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>

		<div>
			{@render modLink("Startpos Switcher", "https://github.com/capeling/startpos-switcher-1920")}

			Adds buttons and keybinds to switch between multiple start positions in a level easily.
			Note that PolzHax also comes with a startpos switcher built in.

			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>

		<div>
			{@render modLink("Textureldr", "https://github.com/geode-sdk/textureldr")}

			Loads texture packs. Texture packs can locally change the in-game UI elements, objects, and icons.

			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>
	</div>
</div>
</Page>

<style>
	.download {
		display: flex;
		width: 100%;
		justify-content: center;
		gap: 2rem;
		padding: 1rem;
	}

	@media(max-width: 1900px) {
		.other-mods {
			width: 100%;
			flex-direction: column;
			align-items: center;
		}
	}

	.other-mods {
		display: flex;
		flex-wrap: wrap;
		gap: 2rem;
		margin-top: 2rem;

		> * {
			width: 20rem;
			background: #1e1e2e;
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

		.download-button {
			margin-left: auto;
			margin-right: auto;
			margin-top: auto;
			font-size: 0.8rem;
		}
	}

	.download-button {
		width: 15rem;
		color: black;
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
		background-image: linear-gradient(to bottom right, #48f796, #3ddc84);
		font-weight: 500;

		&:hover {
			scale: 108%;
			text-decoration: none;
		}
	}
</style>
