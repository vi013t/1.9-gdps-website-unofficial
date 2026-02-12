<script>
	import Link from './Link.svelte';
	import Logo from './Logo.svelte';
</script>

<section>
	<h1>
		<Logo size="3rem" />
		1.9 GDPS
	</h1>

	<ul>
		<li>
			<Link style="color: white; font-size: 1.2rem;" href="/introduction">Introduction</Link>
			<ul>
				<li>
					<Link style="color: #ccccff; font-size: 1.2rem;" href="/introduction#what-is-gdps">What is the 1.9 GDPS?</Link>
				</li>
				<li>
					<Link style="color: #ccccff; font-size: 1.2rem;" href="/introduction#installation">Installation</Link>
				</li>
				<li>
					<Link style="color: #ccccff; font-size: 1.2rem;" href="/introduction#getting-started">Getting Started</Link>
				</li>
			</ul>
		</li>
		<li>
			<a>Use &amp; Navigation</a>
			<ul>
				<li>
					<a>The Mod Menu</a>
				</li>
				<li>
					<a>Transferring Levels</a>
				</li>
			</ul>
		</li>
		<li>
			<Link style="color: white; font-size: 1.2rem;" href="/modding">Modding</Link>
			<ul>
				<li>
					<a>Modding with Geode</a>
				</li>
				<li>
					<a>PolzHax</a>
				</li>
				<li>
					<a>Other Mods</a>
				</li>
			</ul>
		</li>
		<li>
			<a>Resources</a>
			<ul>
				<li>
					<a>Discord Server</a>
				</li>
				<li>
					<a>Texture Packs</a>
				</li>
				<li>
					<a>Source Code</a>
				</li>
			</ul>
		</li>
	</ul>
</section>

<style>
	h1 {
		display: flex;
		gap: 1rem;
		align-items: center;
		color: #ddddff;
		font-weight: bold;
		background: #0d0548;
		width: 100%;
		padding: 1rem 2rem 1rem 2rem;
	}

	section {
		font-size: 1rem;
		position: sticky;
		top: 0px;
		height: 100vh;
		background-image: linear-gradient(to top, #0d0548, #191969);
	}

	ul ul {
		margin-left: 2rem;
		margin-bottom: 1rem;
	}

	a:has(+ ul) {
		color: white;
		font-size: 1.2rem;
	}

	ul:has(ul) {
		margin-top: 1rem;
		margin-left: 2rem;
		margin-right: 2rem;
	}
</style>

