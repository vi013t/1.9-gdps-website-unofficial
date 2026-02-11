<script>
	import Navbar from "../../components/Navbar.svelte";
	import Sidebar from "../../components/Sidebar.svelte";

</script>

<Navbar />

<main>
	<Sidebar />
	<section class="introduction section">
		<h1>Getting Started</h1>

		<p>
			Welcome to the 1.9 Geometry Dash Private Server!
		</p>

		<p>
			Here you'll find <b>unofficial</b> documentation for the 1.9 GDPS. Please be aware that these docs are not affiliated with or endorsed by official GDPS moderators or staff members.
		</p>

		<p>
			<i>Why does this website exist then?</i> To be completely honest, the official 1.9 GDPS website sort of sucks, and it can be a bit of a puzzle to scrape together information on the project from there, especially when it comes to modding and things of that nature, some of which can only be found in the 1.9 GDPS Discord server and isn't even present on the official website. This page is meant to be a one-stop knowledge shop for all of your 1.9 GDPS needs.
		</p>

		<h2>What is the 1.9 GDPS?</h2>

		<p>
			The 1.9 GDPS is a build of Geometry Dash that is locked to the 1.9 update version of the game. While there are some small quality of life changes and additions, the 1.9 GDPS plays essentially like Geometry Dash 1.9. This version of the game does not have many of the modern features in the current update such as moving objects, increased color/object limits, new gamemodes, etc. Many consider this version to be the "golden age" of the game, and dislike the changes that followed in subsequent updates, which eventually led to the creation of the 1.9 GDPS, a build of the game locked to this update.
		</p>

		<p>
			The 1.9 GDPS is comprised of two parts: The client, and the server. Even though it's called the 1.9 GD Private <i>Server</i>, you'll actually technically be downloading the <i>client</i>. The client is the game application that runs on your computer, and the server is the database that your client connects to to play online and use online features such as loading user levels, uploading levels, saving account progress, etc.
		</p>

		<h2>Installation</h2>

		<p>
			The 1.9 GDPS is available on Windows and Android. The Window's version is available as both an installer and a zip file. If you're unsure of the difference and wondering which to go with, the installer is recommended. All of the download links are provided below, linking directly to the files from <a href="https://19gdps.com/download.php">the official 1.9 GDPS website</a>.
		</p>

		<button>Windows (Installer)</button>
		<button>Windows (zip)</button>
		<button>Android</button>

		<p>
			Alternatively, you can reach all of these download links from <a href="https://19gdps.com/download.php">the official 1.9 GDPS website</a>.
		</p>

		<h2>Getting Started</h2>

		<p>
			The 1.9 GDPS is a standalone application, not something that runs within your regular Geometry Dash installation. If you installed it correctly, you should be able to start it as a regular application.
		</p>
	</section>
</main>

<style>
	main {
		display: flex;
	}

	.section {
		padding: 3rem;
		width: 60%;

		h1 {
			font-size: 3rem;
		}

		h2 {
			font-size: 2rem;
			margin-top: 2rem;
		}
	}

	p {
		margin-top: 1rem;
		margin-bottom: 1rem;
		font-size: 1.25rem;
	}

	a {
		color: cornflowerblue;

		&:hover {
			text-decoration: underline;
		}
	}
</style>