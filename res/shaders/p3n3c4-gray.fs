#version 330

in vec3 normal;
in vec3 color;

out vec4 fragColor;

void main()
{
	float gray = color.r + color.g + color.b / 3;
	vec3 grayColor = vec3(gray, gray, gray);

	fragColor = vec4(grayColor, 1.0);
}