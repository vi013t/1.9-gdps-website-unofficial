<script lang="ts">
	let { text = "1.9", size = "40rem" }: { text?: string, size?: string } = $props();
</script>

<svg width="0" height="0">
    <filter id="round-corners">
        <!-- Adjust stdDeviation to control the radius of the corners -->
        <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
        <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 19 -9" result="goo" />
        <feComposite in="SourceGraphic" in2="goo" operator="atop"/>
    </filter>
</svg>

<div class="round-corners">
	<div class="outer nonagon" style:width={size} style:height={size}>
		<div class="blue-1"></div>
		<div class="inner nonagon">
			<span class="nonagon" style:font-size="calc({size} / 2.5)">{text}</span>
		</div>
	</div>
</div>

<style>
	.blue-1 {
		background-color: red;
		width: 50%;
		height: 25%;
		position: absolute;
		top: 53%;
		left: 0px;
		rotate: 5deg;
	}

	svg {
		position: absolute;
		opacity: 0%;
	}

	.round-corners {
		filter: url('#round-corners');
		overflow: hidden;
	}

	.nonagon {
		--radius: 50%;
		--center: 50%;
		position: relative;
		clip-path: polygon(
			calc(var(--center) + (sin(0.056turn) * var(--radius)))
			calc(var(--center) - (cos(0.056turn) * var(--radius))),
			calc(var(--center) + (sin(0.166turn) * var(--radius)))
			calc(var(--center) - (cos(0.166turn) * var(--radius))),
			calc(var(--center) + (sin(0.276turn) * var(--radius)))
			calc(var(--center) - (cos(0.276turn) * var(--radius))),
			calc(var(--center) + (sin(0.386turn) * var(--radius)))
			calc(var(--center) - (cos(0.386turn) * var(--radius))),
			calc(var(--center) + (sin(0.496turn) * var(--radius)))
			calc(var(--center) - (cos(0.496turn) * var(--radius))),
			calc(var(--center) + (sin(0.606turn) * var(--radius)))
			calc(var(--center) - (cos(0.606turn) * var(--radius))),
			calc(var(--center) + (sin(0.716turn) * var(--radius)))
			calc(var(--center) - (cos(0.716turn) * var(--radius))),
			calc(var(--center) + (sin(0.826turn) * var(--radius)))
			calc(var(--center) - (cos(0.826turn) * var(--radius))),
			calc(var(--center) + (sin(0.936turn) * var(--radius)))
			calc(var(--center) - (cos(0.936turn) * var(--radius)))
		);
	}

	.inner {
		width: 80%;
		height: 80%;
		background: #0d0548;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.outer {
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: cyan;
	}

	span {
		font-family: "Protest Strike";
		width: 83%;
		height: 83%;
		color: white;
		display: flex;
		align-items: center;
		justify-content: center;
		background-image: linear-gradient(to bottom, #0d0548, #191969);
		text-shadow: 0px 0px 0.15em black;
	}
</style>