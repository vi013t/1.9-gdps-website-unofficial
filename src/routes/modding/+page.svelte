<script lang="ts">
	import geodeButton from "../../assets/images/geode_button.png";
	import geodeUploadButton from "../../assets/images/geode_upload.png";
	import materialScreenshot from "../../assets/images/material.png";
	import modsButton from '../../assets/images/mods_button.png';
	import optionsButton from '../../assets/images/options_button.png';
	import emberScreenshot from "../../assets/images/project_ember.png";
	import purpuraScreenshot from "../../assets/images/purpura.png";
	import texturePack from "../../assets/images/texture_pack.jpg";
	import texturePackFolder from "../../assets/images/texture_pack_folder.png";
	import Header from "../../components/Header.svelte";
	import BricksIcon from "../../components/icons/BricksIcon.svelte";
	import DiscordIcon from '../../components/icons/DiscordIcon.svelte';
	import DownloadIcon from '../../components/icons/DownloadIcon.svelte';
	import GeodeIcon from '../../components/icons/GeodeIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

{#snippet modLink(name: string, link: string)}
	<Link style="color: black; font-size: 1.4rem; font-weight: 500;" href={link}>{name}</Link>
{/snippet}

<Page previous={{ text: 'Using the 1.9 GDPS', url: '/using-the-gdps' }} next={{ text: 'Resources', url: '/resources' }}>
	<section>
		<Header id="modding" element="h1">Modding</Header>

		<p>
			<b>Mods</b> allow users to add or change features within the game.
		</p>
	</section>

	<section>
		<Header id="modding-with-geode">Modding With Geode</Header>

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

		<p>
			All of this is to say, loading a mod in the 1.9 GDPS is as simple as giving Geode the file. Geode already comes with the 1.9 GDPS by default.
		</p>

		<p>To access Geode for the first time, go to any level and click the settings icon in the upper left:</p>

		<details>
			<summary>Options Button</summary>
			<img src={optionsButton} alt="options button" />
		</details>

		<p>From there, click the Mods button on the bottom:</p>

		<details>
			<summary>Mods Button</summary>
			<img src={modsButton} alt="mods button" />
		</details>

		<p>This will take you into Geode. Once you've installed your first mod, the Geode button will be permanently added to your main menu:</p>

		<details>
			<summary>Geode Button</summary>
			<img src={geodeButton} alt="geode button" />
		</details>

		<p>
			From Geode, use the upload button to upload a Geode file:
		</p>

		<details>
			<summary>Upload Button</summary>
			<img src={geodeUploadButton} alt="geode upload button" />
		</details>
			
		<p>
			This will add the mod to Geode, and you can delete the original file if you'd like. You will need to restart your game to be able to use the mod.
		</p>
	</section>

	<section>
		<Header id="polzhax">PolzHax</Header>

		<p>
			<Link href="https://github.com/Pololak/PolzHax">PolzHax</Link> is probably the most used and fleshed-out mod currently available for the 1.9 GDPS,
			made by <Link href="https://github.com/Pololak">Pololak</Link>. It's a suite of quality-of-life tools and utilities such as changing the game
			speed, increasing levels' object limits, bypassing the default frames per second, and more. It's analogous to the famous <Link
				href="https://absolllute.com/store/mega_hack">Megahack</Link
			> mod used Geometry Dash 2.2:
		</p>

		<details>
			<summary>PolzHax</summary>
			<img src="https://github.com/Pololak/PolzHax/blob/main/image-110.png?raw=true" alt="polzhax" />
		</details>

		<p>You can download the PolzHax Geode file here:</p>

		<div class="download">
			<a class="download-button" href="/download/pololak.polzhax.geode" download>
				<GeodeIcon stroke="black" style="width: 1.3em; height: 1.3em;" />
				PolzHax Geode File
			</a>
		</div>

		<p>
			Once you have the <code>pololok.polzhax.geode</code> file, follow <Link href="#modding-with-geode">the instructions above</Link> to install it into
			Geode and load it into your game. Using PolzHax is as simple as pressing <code>tab</code> to toggle the overlay, and changing the options you want.
			Hovering over an option will tell you what it does.
		</p>

		<p>PolzHax also has a dedicated discord server, which would be the best place for questions and help relating to the mod. You can join here:</p>

		<a href="https://discord.gg/4h6yHgE4Gj" class="discord" target="_blank" rel="noopener noreferrer">
			<DiscordIcon stroke="white" style="width: 1.5em; height: 1.5em;" />
			PolzHax Discord
		</a>
	</section>

	<section>
		<Header id="other-mods">Other Mods</Header>

		<p>Outside of PolzHax, there exists a few smaller utility mods for the 1.9 GDPS:</p>

		<div class="other-mods">
			<div>
				{@render modLink('Audio Offset Calculator', 'https://github.com/Kingminer7/AudioOffsetCalculator/releases/tag/1.1.4-1.9')}

				Allows easily setting music offsets.
				<a href="/download/km7dev.audio-offset.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>

			<div>
				{@render modLink('Circle Tool', 'https://discord.com/channels/328307969882062848/1399882752068948039/1429787277537579121')}

				Adds a circle button to the editor that creates easy circles out of objects.

				<a href="/download/mat.circle-tool.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>

			<div>
				{@render modLink('Confirm Exit', 'https://github.com/solstacoded/confirm_exit_19/releases/latest')}

				Adds a confirmation screen when exiting a level. Note that PolzHax also comes with this built in.

				<a href="/download/solstacoded.confirm_exit.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>
			<div>
				{@render modLink('Backups', 'https://github.com/HJfod/gd-backup')}

				Adds a backup button to back up user data.

				<a href="/download/hjfod.backups.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>

			<div>
				{@render modLink('PolzEditor', 'https://github.com/Pololak/PolzHax')}

				Subset of PolzHax with only the editor-related features.

				<a href="pololak.polzeditor.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>

			<div>
				{@render modLink('Quick Volume Controls', 'https://github.com/HJfod/volume-scroll-wheel')}

				<p>
					Adds the ability to hold <code>Alt</code> and scroll to adjust volume. Holding <code>Shift</code> will only adjust SFX volume, and
					<code>Ctrl</code> will only adjust music volume.
				</p>

				<a href="/download/capeling.startpos-switcher-1920.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>

			<div>
				{@render modLink('Startpos Switcher', 'https://github.com/capeling/startpos-switcher-1920')}

				Adds buttons and keybinds to switch between multiple start positions in a level easily. Note that PolzHax also comes with a startpos switcher
				built in.

				<a href="/download/capeling.startpos-switcher-1920.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>

			<div>
				{@render modLink('Texture Loader', 'https://github.com/geode-sdk/textureldr')}

				Loads texture packs. Texture packs can locally change the in-game UI elements, objects, and icons.

				<a href="/download/geode.texture-loader.geode" class="download-button" download>
					<DownloadIcon stroke="black" style="width: 1.25em; height: 1.25em;" />
					Download
				</a>
			</div>
		</div>
	</section>

	<section class="texture-packs">
		<Header id="texture-packs">Texture Packs</Header>

		<p>
			<b>Texture packs</b> change the textures of the UI elements of your client. For example, this is a texture pack:
		</p>

		<details>
			<summary>Texure Pack</summary>
			<img src={texturePack} alt="texture pack" />
		</details>

		<p>
			Generally speaking, texture packs are not compatible with versions of the game other than the one they were made for; i.e., you need a 1.9 texture pack to apply to the 1.9 game. Texture packs exist as folders of textures, generally compressed to a <code>.zip</code> file. Right click the zip and click <code>Extract all</code> to extract the files into a folder. Texture packs might have a folder in them called <b>Resources</b> where the actual textures are contained, or they could just be in the extracted zip itself. It looks something like this:
		</p>
		
		<details>
			<summary>Texure Pack Folder</summary>
			<img src={texturePackFolder} alt="texture pack folder" />
		</details>

		<p>
			To apply a texture pack, you need to place these files in your 1.9 GDPS folder. On Windows, press <code>Windows + R</code> and enter <code>%localappdata%</code>. This will open your local AppData folder. From there, navigate to <code>Programs &gt; 1.9 GDPS</code> (or wherever your 1.9 GDPS installation is if you changed it when you installed it; <code>%localappdata% &gt; Programs &gt; 1.9 GDPS</code> is just the default). This is where you copy your textures into. It should ask you if you want to replace files; Click "replace all".
		</p>

		<p>
			To remove a texture pack, You can just follow the same steps but with the default textures. The default texture pack can be downloaded here:
		</p>

		<a href="/download/default_texture_pack.zip" download>
			<BricksIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
			Default Texture Pack
		</a>

		<p>
			Below are texture packs made for the 1.9 build of the game.
		</p>

		<hr/>

		<div>
			<div>
				<h3>Ember</h3>
				<p>By <i>Etzer</i></p>
			</div>
			<a href="/download/project_ember.zip" download>
				<DownloadIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
				Download
			</a>
		</div>
		<details>
			<summary>Ember Screenshot</summary>
			<img src={emberScreenshot} alt="texture pack folder" />
		</details>

		<hr/>

		<div>
			<div>
				<h3>Purpura</h3>
				<p>By <i>Jeyzor</i></p>
			</div>
			<a href="/download/purpura.zip" download>
				<DownloadIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
				Download
			</a>
		</div>
		<details>
			<summary>Purpura Screenshot</summary>
			<img src={purpuraScreenshot} alt="texture pack folder" />
		</details>

		<hr/>

		<div>
			<div>
				<h3>Material</h3>
				<p>By <i>Jobet</i></p>
			</div>
			<a href="/download/material.zip" download>
				<DownloadIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
				Download
			</a>
		</div>
		<details>
			<summary>Material Screenshot</summary>
			<img src={materialScreenshot} alt="texture pack folder" />
		</details>
	</section>
</Page>

<style>
	.texture-packs > div {
		display: flex;
		background: linear-gradient(to bottom right, #f9e2af, #fab387, #eba0ac);
		padding: 1rem;
		margin-bottom: 1rem;
		border-radius: 0.5em;
		outline: 3px solid rgba(255, 255, 255, 70%);
		outline-offset: -3px;

		div {
			display: flex;
			flex-direction: column;
		}

		h3 {
			margin: 0px;
			color: black;
		}

		p {
			margin: 0px;
			color: black;
		}

		a {
			margin: 0px;
			margin-left: auto;
			margin-top: 0.5em;
			color: black;
			outline: 2px solid rgba(255, 255, 255, 70%);
			outline-offset: -2px;
		}

		i {
			color: black;
		}
	}

	.download {
		display: flex;
		width: 100%;
		justify-content: center;
		gap: 2rem;
		padding: 1rem;
	}

	@media (orientation: portrait) {
		.other-mods {
			width: 100%;
			flex-direction: column;
			align-items: center;
		}
	}

	h3 + p:not(#a) {
		margin-top: 0px;
	}

	.other-mods {
		display: flex;
		flex-wrap: wrap;
		gap: 2rem;
		margin-top: 2rem;

		> * {
			width: 20rem;
			background: linear-gradient(to bottom right, #f9e2af, #fab387, #eba0ac);
			border-radius: 1em;
			color: black;
			display: flex;
			flex-direction: column;
			padding: 1rem;
			gap: 1rem;
			outline: 3px solid rgba(255, 255, 255, 70%);
			outline-offset: -3px;
			height: 19rem;
			box-shadow: 0px 0px 1em black;

			p:is(p) {
				font-size: 1rem;
				margin-top: 0px;
				color: black;

				code {
					background-color: rgba(0, 0, 0, 20%);
				}
			}
		}

		.download-button {
			margin-left: auto;
			margin-right: auto;
			margin-top: auto;
			font-size: 0.8rem;
			outline: 2px solid rgba(255, 255, 255, 70%);
			outline-offset: -2px;
		}
	}

	a {
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
		background-image: linear-gradient(to bottom right, #61ffa8, #30bc6f);
		font-weight: 500;
		margin-left: auto;
		margin-right: auto;
		margin-top: 1rem;
		margin-bottom: 1rem;

		&:hover {
			scale: 108%;
			text-decoration: none;
		}
	}

	.discord {
		background-image: linear-gradient(to bottom right, #5865f2, #3e48ad);
		color: white;
		margin-left: auto;
		margin-right: auto;
		margin-top: 1rem;
	}
</style>
