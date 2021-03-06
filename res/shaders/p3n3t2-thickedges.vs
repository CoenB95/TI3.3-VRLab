#version 330

layout (location = 0) in vec3 a_position;
layout (location = 1) in vec3 a_normal;
layout (location = 2) in vec2 a_texcoord;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;
uniform float time;

out vec3 normal;
out vec2 texCoord;

void main()
{
	texCoord = a_texcoord;
	normal = normalMatrix * a_normal;
	gl_Position = modelViewProjectionMatrix * vec4(a_position,1);
}