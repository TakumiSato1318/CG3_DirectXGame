#include"BasicShaderHeader.hlsli"

//struct GSOutput
//{
//	float4 pos : SV_POSITION;
//};

[maxvertexcount(6)] 
void main(
	triangle VSOutput input[3] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	for (uint i = 0; i < 3; i++)
	{
		GSOutput element;
		element.svpos = input[i].svpos;
		element.normal = input[i].normal;
		//UV��2�{��
		element.uv = input[i].uv*2.0f;
		output.Append(element);
	}
	output.RestartStrip();
	//2
	for (uint i = 0; i < 3; i++)
	{
		GSOutput element;
		element.svpos = input[i].svpos;
		element.normal = input[i].normal;
		//UV��5�{��
		element.uv = input[i].uv * 5.0f;
		output.Append(element);
	}
}