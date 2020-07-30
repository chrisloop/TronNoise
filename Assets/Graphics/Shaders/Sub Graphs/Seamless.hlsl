#include "Random.hlsl"

void Seamless_float(float2 UV, out float C)
{
	//Random_float(UV, C);

	float2 id = floor(UV);

	for (int y = -1; y <= 1; y++)
	{
		for (int x = -1; x <= 1; x++)
		{
			float2 offs = float2(x, y);


			float n;
			Random_float(id + offs, n);
			Random_float(offs, C);

		}
	}

	//C = 0.5;
}
