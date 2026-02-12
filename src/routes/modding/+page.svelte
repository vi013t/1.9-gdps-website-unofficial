<script>
	import DownloadIcon from '../../components/icons/DownloadIcon.svelte';
	import GeodeIcon from '../../components/icons/GeodeIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

<Page>
	<h1>Modding</h1>

	<p>
		<b>Mods</b> allow users to add or change features within the game.
	</p>

	<h2 id="modding-with-geode">Modding With Geode</h2>

	<p>
		<Link href="https://geode-sdk.org/">Geode</Link> is a mod loader for Geometry Dash, and is currently the only widely used and supported one that exists.
		You can think of Geode a bit like a soda machine, where mods are sodas and Geode acts as a container and mixer for them. While Geode is used in modern
		Geometry Dash 2.2, there also exists a build for 1.9 that's built into the 1.9 GDPS.
	</p>

	<p>
		In Geode, A "mod" is just a file (typically ending in <code>.geode</code>). These mods are written in code (generally C++) by the community and
		then bundled into a singular <code>.geode</code> file. From there, Geode does the heavy lifting and understands how to interpret these filse and actually
		apply the changes to your game.
	</p>

	<p>All of this is to say, loading a mod in the 1.9 GDPS is as simple as giving Geode the file. Geode already comes with the 1.9 GDPS by default.</p>

	<h2 id="polzhax">PolzHax &amp; PolzEdit</h2>

	<p>
		<Link href="https://github.com/Pololak/PolzHax">PolzHax</Link> is probably the most used and fleshed-out mod currently available for the 1.9 GDPS, made
		by <Link href="https://github.com/Pololak">Pololak</Link>. It's a suite of quality-of-life tools and utilities such as changing the game speed,
		increasing levels' object limits, bypassing the default frames per second, and more. It's analogous to the famous <Link
			href="https://absolllute.com/store/mega_hack">Megahack</Link
		> mod used Geometry Dash 2.2:
	</p>

	<img src="https://github.com/Pololak/PolzHax/blob/main/image-110.png?raw=true" alt="polzhax" />

	<p>You can download the PolzHax Geode file below:</p>

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

	<h2 id="other-mods">Other Mods</h2>

	<p>Outside of PolzHax, there exists a few smaller utility mods for the 1.9 GDPS, listed here:</p>

	<div class="other-mods">
		<div>
			<a><h4>Audio Offset Calculator</h4></a>

			Allows easily setting music offsets.
			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>

		<div>
			<a><h4>Confirm Exit</h4></a>
			<a class="download-button" download>
				<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
				Download
			</a>
		</div>
		<div>
			<a class="download-button" download>Hjfod's Backups</a>
		</div>
		<div>
			<a class="download-button" download>Startpos Switcher</a> Adds buttons and keybinds to switch between multiple start positions in a level easily.
			Note that PolzHax also comes with a startpos switcher built in.
		</div>
		<div>
			<a class="download-button" download>Textureldr</a>
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

	.other-mods {
		display: flex;
		flex-wrap: wrap;
		gap: 2rem;

		> * {
			width: 20rem;
			background: #181825;
			border-radius: 1em;
			color: #ccccff;
			display: flex;
			flex-direction: column;
			padding: 1rem;
			gap: 1rem;
			border: 2px solid #aaaadd;
			transition: scale 0.2s;
			height: 20rem;

			&:hover {
				scale: 105%;
			}

			h4 {
				color: white;
				font-weight: 500;
				font-size: 1.2rem;
			}
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
		transition: scale 0.2s;
		box-shadow: 0px 0px 1em black;
		text-align: center;
		display: inline-flex;
		align-items: center;
		justify-content: center;
		height: 3em;
		font-size: 1rem;
		gap: 0.5em;
		background-image: linear-gradient(to bottom right, #48f796, #3ddc84);

		&:hover {
			scale: 105%;
			text-decoration: none;
		}
	}
</style>
