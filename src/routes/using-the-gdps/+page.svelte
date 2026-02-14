<script lang="ts">
	import downloadButton19 from "../../assets/images/19_download_gmd.png";
	import uploadButton19 from "../../assets/images/19_upload_gmd.png";
	import modMenu from "../../assets/images/mod_menu.png";
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

<Page previous={{ text: 'Introduction', url: '/introduction' }} next={{ text: 'Modding', url: '/modding' }}>
	<div class="section">
		<h1>Using the 1.9 GDPS</h1>

		<p>
			For the most part, assuming you play Geometry Dash, navigating the 1.9 GDPS will be incredibly intuitive&mdash;there are just a few extra features
			worth being aware of.
		</p>
	</div>

	<div class="section">
		<h2 id="mod-menu">The Mod Menu</h2>

		<p>
			The 1.9 GDPS comes with a built in "mod menu"&mdash;it's a suite of quality-of-life tools and utilities that can make the game more enjoyable,
			such as changing the game's speed, unlocking all icons, bypassing the default frames per second, etc. Pressing <code>tab</code> will toggle the menu:
		</p>

		<details>
			<summary>Mod Menu</summary>
			<img src={modMenu} alt="mod menu" />
		</details>

		<p>
			Each individual panel of the menu can be moved around by dragging it's titlebar. The options that are highlighted are enabled, and when your
			game is restarted, your enabled options are saved.
		</p>

		<p>
			A much more thorough and advanced mod menu exists for the 1.9 GDPS called <Link href="https://github.com/Pololak/PolzHax">PolzHax</Link>. See <Link
				href="/modding#polzhax">the PolzHax info</Link
			> for more information and installation instructions.
		</p>
	</div>

	<div class="section">
		<h2 id="transferring-levels">Transferring Levels</h2>

		<p>
			You may want to upload level you made on the 1.9 GDPS to the official Geometry Dash 2.2 servers, or even import a 2.2 level into a 1.9 level in
			the GDPS. Luckily both of these are possible through <code>.gmd</code> (GMD) files. A GMD file is essentially a Geometry Dash level packed into a
			file. The file contains all of the information about the level, including the level's name, description, objects, colors, song, etc. Other than transferring
			levels between versions, this makes them also useful for creating backups&mdash;A saved GMD file on a local or cloud machine essentially acts as a
			frozen saved backup of the level.
		</p>

		<p>
			To transfer levels to and from the official 2.2 servers, we're going to download our levels as GMD files and then upload them to the other
			server. To do so, you need to <Link href="https://geode-sdk.org/install">install Geode to your 2.2 client</Link> and install the <Link
				href="https://geode-sdk.org/mods/hjfod.gdshare">GDShare</Link
			> mod for more information on Geode, check out the <Link href="/modding#modding-with-geode">Modding With Geode</Link> documentation.
		</p>

		<p>
			To transfer a level <i>from</i> the 1.9 GDPS <i>to</i> the official servers (or elsewhere), first use this button to download a GMD file of the level:
		</p>

		<details>
			<summary>Download a GMD file from the 1.9 GDPS</summary>
			<img src={downloadButton19} alt="1.9 download GMD button" />
		</details>

		<p>
			Then, in your 2.2 client, use this button provided by the <Link href="https://geode-sdk.org/mods/hjfod.gdshare">GDShare</Link> mod to upload the GMD file
			you just saved:
		</p>

		<details>
			<summary>Upload a GMD file to the official 2.2 servers</summary>
			<p>
				Oops! There's no image here yet. Geode is currently broken, so I can't actually get a screenshot of this just yet. sorry :p
			</p>
		</details>
			

		<p>
			To transfer a level <i>from</i> the official 2.2 servers <i>to</i> the 1.9 GDPS, the process is slightly more involved. First of all, note that the
			level in it's base state has to be "compatible"&mdash;this means it can't use any objects that don't exist in the 1.9 version of the game, for example.
			It essentially has to be 1.9 level that exists on the official 2.2 servers. First, press the download button provided by the <Link href="https://geode-sdk.org/mods/hjfod.gdshare">GDShare</Link> mod on the 2.2 version of the level:
		</p> 

		<details>
			<summary>Download a GMD file from the official 2.2 servers</summary>
			<p>
				Oops! There's no image here yet. Geode is currently broken, so I can't actually get a screenshot of this just yet. sorry :p
			</p>
		</details>
			
		<p>
			There's just one extra step compared to transferring the other way around&mdash;the
			2.2 GMD file needs to be converted into a 1.9 GMD file. The two are different&mdash;for example, each object has a set "ID" that is stored in the
			GMD files, but RobTop has changed some of the IDs since 1.9. Luckily, there's a tool by <Link href="https://github.com/qimiko">qimiko</Link> called <Link
				href="https://qimiko.github.io/gdlevelconverter-web/">GD Level Converter</Link
			> that does just what we need&mdash;it converts 2.2 GMD files to 1.9 GMD files. For convenience, the tool is embedded here as well:
		</p>

		<details>
			<summary>GMD File Converter</summary>
			<iframe height="300" title="GD Level Converter" src="https://qimiko.github.io/gdlevelconverter-web/"></iframe>
		</details>

		<p>
			After that, the process is the same&mdash;Just upload the GMD file into the 1.9 GDPS:
		</p>

		<details>
			<summary>Upload a GMD file to the 1.9 GDPS</summary>
			<img src={uploadButton19} alt="1.9 download GMD button" />
		</details>
	</div>

	<div class="section">
		<h2 id="reuploading-songs">Reuploading Songs</h2>

		<p>
			Due to recent changes to the Newgrounds and Soundcloud APIs, some songs are now unavailable. Because of this, the 1.9 GDPS has a song reupload tool that allows reuploading songs to the servers. Use it here:
		</p>

		<details>
			<summary>Song Reupload Tool</summary>
			<iframe class="song-reupload" height="300" title="Song Reupload Tool" src="https://19gdps.com/gdapi/tools/songAdd.php"></iframe>
		</details>

		<p>
			...or through <Link href="https://19gdps.com/gdapi/tools/songAdd.php">the official website</Link> directly.
		</p>
	</div>
</Page>

<style>
	iframe {
		width: 100%;
		border-radius: 0.5em;
		border: 2px solid #cdd6f4;
	}

	.song-reupload {
		height: 27rem;
	}
</style>

