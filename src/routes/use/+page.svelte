<script lang="ts">
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

<Page previous={{ text: "Introduction", url: "/introduction" }} next={{ text: "Modding", url: "/modding" }}>
	<div class="section">
		<h1>Using the 1.9 GDPS</h1>

		<p>
			For the most part, assuming you play Geometry Dash, navigating the 1.9 GDPS will be incredibly intuitive. There are just a few extra features worth being aware of.
		</p>
	</div>

	<div class="section">
		<h2 id="mod-menu">The Mod Menu</h2>

		<p>
			The 1.9 GDPS comes with a built in "mod menu"&mdash;it's a suite of quality-of-life tools and utilities that can make the game more enjoyable, such as changing the game's speed, unlocking all icons, bypassing the default frames per second, etc. Pressing <code>tab</code> will toggle the menu:
		</p>

		<p>
			Each individual panel of the menu can be moved around by dragging it's titlebar. The options that are highlighted are enabled, and when your game is restarted, your enabled options are saved.
		</p>

		<p>
			A much more thorough and advanced mod menu exists for the 1.9 GDPS called <Link href="https://github.com/Pololak/PolzHax">PolzHax</Link>. See <Link href="/modding#polzhax">the PolzHax info</Link> for more information and installation instructions.
		</p>
	</div>

	<div class="section">
		<h2 id="transferring-levels">Transferring Levels</h2>

		<p>
			You may want to upload level you made on the 1.9 GDPS to the official Geometry Dash 2.2 servers, or even import a 2.2 level into a 1.9 level in the GDPS. Luckily both of these are possible through <code>.gmd</code> (GMD) files. A GMD file is essentially a Geometry Dash level packed into a file. The file contains all of the information about the level, including the level's name, description, objects, colors, song, etc. Other than transferring levels between versions, this makes them also useful for creating backups&mdash;A saved GMD file on a local or cloud machine essentially acts as a frozen saved backup of the level.
		</p>

		<p>
			To transfer levels to and from the official 2.2 servers, we're going to download our levels as GMD files and then upload them to the other server. To do so, you need to <Link href="https://geode-sdk.org/install">install Geode to your 2.2 client</Link> and install the <Link href="https://geode-sdk.org/mods/hjfod.gdshare">GDShare</Link> mod for more information on Geode, check out the <Link href="/modding#modding-with-geode">Modding With Geode</Link> documentation.
		</p>

		<p>
			To transfer a level <i>from</i> the 1.9 GDPS <i>to</i> the official servers (or elsewhere), first use this button to download a GMD file of the level:
		</p>

		<p>
			Then, in your 2.2 client, use this button provided by the <Link href="https://geode-sdk.org/mods/hjfod.gdshare">GDShare</Link> to upload the GMD file you just saved:
		</p>

		<p>
			To transfer a level <i>from</i> the official 2.2 servers <i>to</i> the 1.9 GDPS, the process is slightly more involved. First of all, note that the level in it's base state has to be "compatible"&mdash;this means it can't use any objects that don't exist in the 1.9 version of the game, for example. It essentially has to be 1.9 level that exists on the official 2.2 servers. There's just one extra step compared to transferring the other way around&mdash;the 2.2 GMD file needs to be converted into a 1.9 GMD file. The two are different&mdash;for example, each object has a set "ID" that is stored in the GMD files, but RobTop has changed some of the IDs since 1.9.
		</p>

		<p>
			Luckily, there's a tool by <Link href="https://github.com/qimiko">qimiko</Link> called <Link href="https://qimiko.github.io/gdlevelconverter-web/">GD Level Converter</Link> that does just what we need&mdash;it converts 2.2 GMD files to 1.9 GMD files. For convenience, the tool is embedded here as well:
		</p>

		<iframe height="300" title="GD Level Converter" src="https://qimiko.github.io/gdlevelconverter-web/"></iframe>

		<p>
			After that, the process is the same&mdash;
		</p>
	</div>
</Page>

<style>

	iframe {
		width: 100%;
	}
</style>