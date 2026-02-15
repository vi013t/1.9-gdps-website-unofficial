<script>
	import virusFlag from "../../assets/images/virus_flag.png";
	import windowsMoreInfo from '../../assets/images/windows_more_info.png';
	import windowsRunAnyway from '../../assets/images/windows_run_anyway.png';
	import windowsWarning from '../../assets/images/windows_warning.png';
	import Header from "../../components/Header.svelte";
	import AndroidIcon from '../../components/icons/AndroidIcon.svelte';
	import VisualStudioIcon from '../../components/icons/VisualStudioIcon.svelte';
	import WindowsIcon from '../../components/icons/WindowsIcon.svelte';
	import ZipIcon from '../../components/icons/ZipIcon.svelte';
	import Link from '../../components/Link.svelte';
	import Note from "../../components/Note.svelte";
	import Page from '../../components/Page.svelte';
</script>

<Page next={{ text: 'Using the 1.9 GDPS', url: '/using-the-gdps' }}>
	<section>
		<Header id="introduction" element="h1">Introduction</Header>

		<p>Welcome to the 1.9 Geometry Dash Private Server!</p>

		<p>
			Here you'll find <b>unofficial</b> documentation for the 1.9 GDPS. Please be aware that these docs are not affiliated with or endorsed by official
			GDPS moderators or staff members.
		</p>

		<p>
			<i>Why does this website exist then?</i> A lot of the information regarding the 1.9 GDPS is scattered between the official website and the Discord, and it can be tricky to piece everything together without a guided walkthrough. Also I just like pretty websites. Sorry Absolute :p
		</p>

		<p>
			Please do check out <Link href="https://19gdps.com">the official website</Link>.
		</p>
	</section>

	<section>
		<Header id="what-is-gdps">What is the 1.9 GDPS?</Header>

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
	</section>

	<section>
		<Header id="installation">Installation</Header>

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

		<p>
			The rest is pretty straightforward; It'll have you pick a location for the app&mdash;if you're not sure, stick with the default. It'll ask if you want to make a desktop shortcut too; That one's up to you.
		</p>

		<p>
			You can also set up the 1.9 GDPS on macOS or Linux; It's just a bit more involved since you need to go through a virtualization layer. Put simply, the game only exists as a Windows application, but there are programs on macOS and Linux that can run Windows applications.
		</p>

		<details>
			<summary>Installing the 1.9 GDPS on macOS</summary>

			<p>
				Installing the 1.9 GDPS on macOS requires macOS 10.15 &lbrack;Catalina&rbrack; or later.
			</p>

			<p>
				To install the 1.9 GDPS on macOS, we're going to run it through <Link href="https://www.winehq.org/">Wine</Link>. Wine is an architecture for macOS and Linux that lets you run Windows apps on those platforms.
			</p>

			<p>
				To install Wine, you first need <b>Homebrew</b>. Homebrew is a command line interface (CLI) that can install software on your system. To install Homebrew, open a terminal and paste in the following command:
			</p>

			<code class="block">
				/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
			</code>

			<Note>
				Never paste code you don't understand into your terminal. You can (and should) verify that this is safe by checking <Link href="https://brew.sh/">the official website</Link>.
			</Note>

			<p>
				It will prompt you to enter your password. For security, it won't show anything as you type, but it is listening!
			</p>

			<p>
				Once it's done installing, open a new terminal window so that the software is applied, and run:
			</p>

			<code class="block">
				brew install --cask wine-stable
			</code>

			<p>
				This will install the latest stable version of Wine, and will prompt you for your password again.
			</p>

			<p>
				Download the 1.9 GDPS using the <b>Windows Zip</b> download above. Unzip it, and double click <b>DontRenameMeThxDash.exe</b> to run it. If it doesn't choose Wine Stable as the default application to open it, right-click and select "Open With...", then select Wine Stable.
			</p>
		</details>

		<details>
			<summary>Installing the 1.9 GDPS on Linux</summary>

			<p>
				I'm going to be a little more terse with this one, because if you're running Linux you've basically signed a waiver saying you know what you're doing.
			</p>

			<p>
				You can run the 1.9 GDPS through <Link href="https://www.winehq.org/">Wine</Link>.
			</p>

			<p>
				Alternatively, you can run the 1.9 GDPS through Steam and Proton by <Link href="https://help.steampowered.com/en/faqs/view/4B8B-9697-2338-40EC">adding it as a non-Steam game</Link> and enabling <Link href="https://www.protondb.com/">Proton</Link> for it.
			</p>
		</details>

	</section>

	<section>
		<Header id="troubleshooting">Troubleshooting</Header>

		<p>You might run into some issues during installation. Don't worry, we'll work through it. Below are the most common errors you might encounter.</p>

		<details>
			<summary>Windows Protected Your PC / Antivirus Flag</summary>

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
				This will take you into the installer.
			</p>
		</details>

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
		<Header id="getting-started">Getting Started</Header>

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

		<Note>
			Your username must <b>only</b> contain <b>letters and numbers</b>. There have been cases where the website allows you to create a username with specicial symbols in it, and this can make it impossible for you to log in to the game.
		</Note>
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
