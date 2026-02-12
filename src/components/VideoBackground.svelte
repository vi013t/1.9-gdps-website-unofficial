<script>
	import anotherAscent from "../assets/videos/another_ascent.mp4";
</script>

<video src={anotherAscent} muted autoplay loop></video>

<style>
	video {
		height: 100%;
		width: 177.77777778vh; /* 100 * 16 / 9 */
		min-width: 100%;
		min-height: 56.25vw; /* 100 * 9 / 16 */
		position: fixed;
		left: 50%;
		top: 50%;
		transform: translate(-50%, -50%);
		z-index: -1;
		pointer-events: none;
		filter: brightness(20%);
		scale: 110%;
	}
</style>