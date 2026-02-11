<script lang="ts">
	let { text = '1.9', size = '10rem' }: { text?: string; size?: string } = $props();
</script>

<div class="container" style:width={size} style:height={size}>
	<div class="shadow" style:filter="blur(calc({size} / 10))"></div>
	<div class="outer nonagon" style:width={size} style:height={size}>
		<div class="right blue"></div>
		<div class="right green"></div>
		<div class="purple"></div>
		<div class="red"></div>
		<div class="left blue"></div>
		<div class="left green"></div>
		<div class="bottom yellow"></div>
		<div class="top yellow"></div>
		<div class="inner nonagon">
			<span class="nonagon" style:font-size="calc({size} / 2.5)">{text}</span>
		</div>
	</div>
</div>

<style>
	.outer {
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: #82f2ff;
		transform: translate(-4%, -2%);
	}

	.container {
		position: relative;
	}

	.shadow {
		width: 100%;						
		height: 100%;
		background-color: black;
		left: 0px;
		top: 0px;
		position: absolute;
		border-radius: 50%;
	}

	.blue {
		background-color: #00baff;
	}

	.green {
		background-color: #66ff00;
	}

	.yellow {
		background-color: #f6ff00;
	}

	.purple {
		background-color: #fa64ff;
		width: 30%;
		height: 30%;
		position: absolute;
		top: 14%;
		right: 0%;
		rotate: 75deg;
	}

	.right.blue {
		width: 30%;
		height: 35%;
		position: absolute;
		top: 34%;
		right: 0%;
		rotate: 63deg;
	}

	.right.green {
		width: 30%;
		height: 35%;
		position: absolute;
		top: 23%;
		right: 0%;
		rotate: 73deg;
	}

	.red {
		background-image: radial-gradient(at 63% 15%, #fd8377, #fa433b, #fa433b);
		width: 70%;
		height: 70%;
		position: absolute;
		top: -22%;
		right: 22%;
		rotate: 48deg;
	}

	.bottom.yellow {
		width: 50%;
		height: 20%;
		position: absolute;
		top: 24%;
		left: 0px;
		rotate: 20deg;
	}

	.top.yellow {
		width: 50%;
		height: 10%;
		position: absolute;
		top: 22%;
		left: 0px;
		rotate: 35deg;
	}

	.left.green {
		width: 50%;
		height: 17%;
		position: absolute;
		top: 43%;
		left: 0px;
		rotate: 15deg;
	}

	.left.blue {
		width: 50%;
		height: 25%;
		position: absolute;
		top: 53%;
		left: 0px;
		rotate: 5deg;
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

	span {
		font-family: 'Google Sans Flex';
		font-weight: bold;
		width: 83%;
		height: 83%;
		color: white;
		display: flex;
		align-items: center;
		justify-content: center;
		background-image: linear-gradient(to bottom, #0d0548, #191969);
		text-shadow:
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548,
			0px 0px 0.08em #0d0548;
	}
</style>
