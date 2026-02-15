<script>
	import virusFlag from "../../assets/images/virus_flag.png";
	import windowsMoreInfo from '../../assets/images/windows_more_info.png';
	import windowsRunAnyway from '../../assets/images/windows_run_anyway.png';
	import windowsWarning from '../../assets/images/windows_warning.png';
	import AndroidIcon from '../../components/icons/AndroidIcon.svelte';
	import VisualStudioIcon from '../../components/icons/VisualStudioIcon.svelte';
	import WindowsIcon from '../../components/icons/WindowsIcon.svelte';
	import ZipIcon from '../../components/icons/ZipIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Page from '../../components/Page.svelte';
</script>

<Page next={{ text: 'Using the 1.9 GDPS', url: '/using-the-gdps' }}>
	<div class="section">
		<h1>Introduction</h1>

		<p>Welcome to the 1.9 Geometry Dash Private Server!</p>

		<p>
			Here you'll find <b>unofficial</b> documentation for the 1.9 GDPS. Please be aware that these docs are not affiliated with or endorsed by official
			GDPS moderators or staff members.
		</p>

		<p>
			<i>Why does this website exist then?</i> To be completely honest, the official 1.9 GDPS website is a bit scattered, and it can be a bit of a puzzle to
			scrape together information from there. In particular, when it comes to modding, some of the information can only be found in the 1.9 GDPS Discord server and isn't present on the official website. 
		</p>

		<p>
			Please do check out <Link href="https://19gdps.com">the official website</Link>.
		</p>
	</div>

	<div class="section">
		<h2 id="what-is-gdps">What is the 1.9 GDPS?</h2>

		<p>
			The 1.9 GDPS is a build of Geometry Dash that is locked to the 1.9 update version of the game. While there are some small quality of life
			changes and additions, the 1.9 GDPS plays essentially like Geometry Dash 1.9. This version of the game does not have many of the modern features
			in the current update such as moving objects, increased color/object limits, new gamemodes, etc. Many consider this version to be the "golden
			age" of the game, and dislike the changes that followed in subsequent updates, which eventually led to the creation of the 1.9 GDPS, a build of
			the game locked to this update.
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

		<div class="buttons">
			<a href="https://static.xyze.dev/gdps/251008-gdps.exe" class="windows">
				<WindowsIcon stroke="black" style="width: 1.3em; height: 1.3em;" />
				Windows (Installer)
			</a>
			<a href="https://static.xyze.dev/gdps/251008-gdps.zip" class="windows">
				<ZipIcon stroke="black" style="width: 1.6em; height: 1.6em;" />
				Windows (zip)
			</a>
			<a href="https://static.xyze.dev/gdps/251008-gdps.apk" class="android">
				<AndroidIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
				Android
			</a>
		</div>

		<p>
			Alternatively, you can reach all of these download links from <Link href="https://19gdps.com/download.php">the official 1.9 GDPS website</Link>.
		</p>

		<p>When installing the 1.9 GDPS, Windows may warn you that the file is from an unverified publisher and may be malicious:</p>

		<details>
			<summary>Windows Warning</summary>
			<img src={windowsWarning} alt="windows warning" />
		</details>

		<p>
			Similarly, for <Link href={virusFlag}>technical reasons</Link>, your antivirus may flag the application. Scary! Don't worry, the 1.9 GDPS is totally safe. If you have security concerns, you can view <Link href="/resources#source-codes"
				>the source code for the project</Link
			> and verify for yourself that it's safe. To proceed with the installation, click "More Info":
		</p>
			
		<details>
			<summary>More Info</summary>
			<img src={windowsMoreInfo} alt="windows more info" />
		</details>

		<p>
			and then click "Run anyway":
		</p>

		<details>
			<summary>Run Anyway</summary>
			<img src={windowsRunAnyway} alt="windows run anyway" />
		</details>

		<p>
			This will take you into the installer. The rest is pretty straightforward; It'll have you pick a location for the app&mdash;if you're not sure, stick with the default. It'll ask if you want to make a desktop shortcut too; That one's up to you.
		</p>
	</div>

	<section>
		<h2 id="troubleshooting">Troubleshooting</h2>

		<p>You might run into some issues during installation. Don't worry, we'll work through it. Below are the most common errors you might encounter.</p>

		<details>
			<summary>MCVCP100.dll was not found</summary>
			<p>
				<b>MSVCP100.dll was not found</b> - This error means that you're missing the <b>2010</b> Visual Studio C++ Redistributables. These should already be on your computer if you have Geometry Dash installed from Steam. If you're still getting this error, you can manually download and install the redistributables. Make sure you install <b>both the x86 and x64</b> versions. The installers are included here:
			</p>

			<div class="buttons">
				<a href="/download/vcredist_2010_x86.exe" download class="visual-studio">
					<VisualStudioIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
					2010 x86 Redistributables
				</a>
				<a href="/download/vcredist_2010_x64.exe" download class="visual-studio">
					<VisualStudioIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
					2010 x64 Redistributables
				</a>
			</div>

			<p>
				Alternatively, you can download the 2010 redistributables from <Link href="https://www.microsoft.com/en-us/download/details.aspx?id=26999">the official website</Link>.
			</p>

			<p>Upon completion, it's recommended to restart your computer to ensure the software is to be useable.</p>
		</details>	

		<details>
			<summary>MSVCP120.dll was not found</summary>
			<p>
				<b>MSVCP120.dll was not found</b> - This error means that you're missing the <b>2013</b> Visual Studio C++ Redistributables. These should already be on your computer if you have Geometry Dash installed from Steam. If you're still getting this error, you can manually download and install the redistributables. Make sure you install <b>both the x86 and x64</b> versions. The installers are included here:
			</p>

			<div class="buttons">
				<a href="/download/vcredist_2013_x86.exe" download class="visual-studio">
					<VisualStudioIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
					2013 x86 Redistributables
				</a>
				<a href="/download/vcredist_2013_x64.exe" download class="visual-studio">
					<VisualStudioIcon stroke="black" style="width: 1.5em; height: 1.5em;" />
					2013 x64 Redistributables
				</a>
			</div>

			<p>
				Alternatively, you can download the 2013 redistributables from <Link href="https://www.microsoft.com/en-us/download/details.aspx?id=40784">the official website</Link>.
			</p>

			<p>Upon completion, it's recommended to restart your computer to ensure the software is to be useable.</p>
		</details>

		<details>
			<summary>steam_api.dll is missing</summary>
			<p>
				<b>steam_api.dll is missing</b> - This error can happen if your antivirus flags the application. The recommended solution is to add an exclusion for the 1.9 GDPS directory to your antivirus. The instructions will vary depending on your antivirus&mdash;just make sure to reinstall the game once you're done.
			</p>
		</details>	

		<p>
			Other than that, it's just the usual stuff&mdash;try restarting your computer, rerunning the installer, redownloading the installer, etc. If
			you're issue persists, there's a support channel in <Link href="/resources#discord">the discord</Link>.
		</p>
	</section>

	<section>
		<h2 id="getting-started">Getting Started</h2>

		<p>
			The 1.9 GDPS is a standalone application, not something that runs within your regular Geometry Dash installation. If you installed it correctly,
			you should be able to start it as a regular application. You're going to want to make an account too. You can do that here:
		</p>

		<details>
			<summary>Create Account</summary>
			<iframe title="Register Account" src="https://19gdps.com/gdapi/tools/account/registerAccount.php"></iframe>
		</details>

		<p>
			...or through <Link href="https://19gdps.com/gdapi/tools/account/registerAccount.php">the official website</Link> directly. You can then log into that account in the 1.9 game client.
		</p>

		<p>
			Your username must <b>only</b> contain <b>letters and numbers</b>. There have been cases where the website allows you to create a username with specicial symbols in it, and this can make it impossible for you to log in to the game.
		</p>
	</section>
</Page>

<style>
	@media (orientation: portrait) {
		.buttons {
			flex-direction: column;
		}
	}

	iframe {
		height: 35rem;
		border-radius: 0.5em;
		width: 100%;
		border: 2px solid #cdd6f4;
	}

	a {
		min-width: 15rem;
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
		padding: 0px 1em 0px 1em;

		&:hover {
			scale: 105%;
			text-decoration: none;
		}
	}

	.windows {
		background-image: linear-gradient(to bottom right, #77ccff, #55aaff);
	}

	.android {
		background-image: linear-gradient(to bottom right, #48f796, #3ddc84);
	}

	.visual-studio {
		background-image: linear-gradient(to bottom right, #d59dff, #ae7fe2);
	}

	.buttons {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		gap: 2rem;
		padding: 1rem;
	}
</style>
