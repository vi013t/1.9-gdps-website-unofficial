<script lang="ts">
	import Link from "../../components/Link.svelte";
	import Page from "../../components/Page.svelte";

	type Player = {
		name: string;
	};

	type Demon = {
		name: string,
		position: number;
		id: number;
		requirement: number;
		video: string;
		thumbnail: string;
		level_id: string;
		verifier: Player;
		publisher: Player;
	}

	const demons: Promise<Demon[]> = $state(fetch("https://demonlist.19gdps.com/api/v2/demons/listed").then(response => response.json()));

	$inspect(demons);
</script>

<Page nosidebar>
	<div class="section">
		<h1>1.9 GDPS Demon List</h1>

		<p>
			The 1.9 GDPS Demon List is a ranking of the hardest verified levels uploaded to the 1.9 GDPS.
			Also consider checking out <Link href="https://demonlist.19gdps.com/demonlist">the official website</Link>.
		</p>
	</div>

	<div class="demons">
		{#await demons then demons}
			{#each demons as demon}
				<div class="demon">
					<img src={demon.thumbnail} alt={demon.name} />
					<div class="info">
						<h2>{demon.name}</h2>
						<span>Published by <i>{demon.publisher.name}</i></span>
						<span>Verified by <i>{demon.verifier.name}</i></span>
						<span class="ranking">#{demon.position}</span>
					</div>
				</div>
			{/each}
		{/await}
	</div>
</Page>

<style>

	.demon {
		display: flex;
		gap: 2rem;
		background-color: #11111b;
		outline: 2px solid #cdd6f4;
		border-radius: 0.5em;
		padding: 2rem;
		position: relative;

		span:not(.ranking) {
			color: #ccccff;
		}

		img {
			width: 20rem;
			aspect-ratio: 16/9;
		}
	}

	.ranking {
		position: absolute;
		top: 1rem;
		right: 1rem;
		font-size: 2rem;
		color: white;
		font-weight: bold;
	}
	
	.info {
		display: flex;
		flex-direction: column;
		gap: 0.5rem;

		h2 {
			margin-bottom: 2rem;
		}
	}

	.demons {
		display: flex;
		flex-direction: column;
		gap: 2rem;
		background-color: black;
	}

	.section {
		margin-bottom: 2rem;
	}
</style>