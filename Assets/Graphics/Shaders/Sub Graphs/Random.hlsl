void Random_float(float2 Seed, out float RandomNumber)
{
	RandomNumber = frac(sin(dot(Seed, float2(12.9898, 78.233)))*43758.5453);
	RandomNumber = lerp(0, 1, RandomNumber);
}
