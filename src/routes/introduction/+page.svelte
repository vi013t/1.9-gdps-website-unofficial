<script>
	import AndroidIcon from '../../components/icons/AndroidIcon.svelte';
	import WindowsIcon from '../../components/icons/WindowsIcon.svelte';
	import ZipIcon from '../../components/icons/ZipIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

<Page>
	<div class="section">
		<h1>Introduction</h1>

		<p>Welcome to the 1.9 Geometry Dash Private Server!</p>

		<p>
			Here you'll find <b>unofficial</b> documentation for the 1.9 GDPS. Please be aware that these docs are not affiliated with or endorsed by official GDPS
			moderators or staff members.
		</p>

		<p>
			<i>Why does this website exist then?</i> To be completely honest, the official 1.9 GDPS website sort of sucks, and it can be a bit of a puzzle to scrape
			together information on the project from there. In particular, when it comes to modding and things of that nature, some of the information can only be found in the 1.9 GDPS Discord server and isn't present on the official website. This page is meant to be a one-stop shop for all of your 1.9 GDPS
			needs.
		</p>
	</div>

	<div class="section">
		<h2 id="what-is-gdps">What is the 1.9 GDPS?</h2>

		<p>
			The 1.9 GDPS is a build of Geometry Dash that is locked to the 1.9 update version of the game. While there are some small quality of life changes
			and additions, the 1.9 GDPS plays essentially like Geometry Dash 1.9. This version of the game does not have many of the modern features in the
			current update such as moving objects, increased color/object limits, new gamemodes, etc. Many consider this version to be the "golden age" of the
			game, and dislike the changes that followed in subsequent updates, which eventually led to the creation of the 1.9 GDPS, a build of the game
			locked to this update.
		</p>

		<p>
			The 1.9 GDPS is comprised of two parts: The client, and the server. Even though it's called the 1.9 GD Private <i>Server</i>, you'll actually
			technically be downloading the <i>client</i>. The client is the game application that runs on your computer, and the server is the database that
			your client connects to to play online and use online features such as loading user levels, uploading levels, saving account progress, etc.
		</p>
	</div>

	<div class="section">
		<h2 id="installation">Installation</h2>

		<p>
			The 1.9 GDPS is available on Windows and Android. The Window's version is available as both an installer and a zip file. If you're unsure of the
			difference and wondering which to go with, the installer is recommended. All of the download links are provided below, linking directly to the
			files from <Link href="https://19gdps.com/download.php">the official 1.9 GDPS website</Link>.
		</p>

		<div class="installation">
			<a href="https://static.xyze.dev/gdps/251008-gdps.exe">
				<WindowsIcon stroke="black" style="width: 1.3em; height: 1.3em;" />
				Windows (Installer)
			</a>
			<a href="https://static.xyze.dev/gdps/251008-gdps.zip">
				<ZipIcon stroke="black" style="width: 1.6em; height: 1.6em;" />
				Windows (zip)
			</a>
			<a href="https://static.xyze.dev/gdps/251008-gdps.apk">
				<AndroidIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
				Android
			</a>
		</div>

		<p>
			Alternatively, you can reach all of these download links from <Link href="https://19gdps.com/download.php">the official 1.9 GDPS website</Link>.
		</p>
	</div>

	<div class="section">
		<h2 id="getting-started">Getting Started</h2>

		<p>
			The 1.9 GDPS is a standalone application, not something that runs within your regular Geometry Dash installation. If you installed it correctly,
			you should be able to start it as a regular application.
		</p>
	</div>
</Page>

<style>
	.installation {
		display: flex;
		width: 100%;
		justify-content: center;
		gap: 2rem;
		padding: 1rem;

		> * {
			background-image: linear-gradient(to bottom right, #77ccff, #55aaff);
			width: 15rem;
			color: black;
			border-radius: 0.5rem;
			transition: scale 0.2s;
			box-shadow: 0px 0px 1em black;
			text-align: center;
			display: flex;
			align-items: center;
			justify-content: center;
			height: 3em;
			gap: 0.5em;

			&:last-child {
				background-image: linear-gradient(to bottom right, #48f796, #3ddc84);
			}

			&:hover {
				scale: 105%;
				text-decoration: none;
			}
		}
	}
</style>
