#version 330 core

layout (location = 0) in vec4 vertex; // <vec2 position, vec2 texCoords>
layout (location = 1) in mat4 model;
layout (location = 5) in vec3 spriteColor;

out vec2 TexCoords;
out vec3 spriteC;

uniform mat4 projection;

void main()
{
    TexCoords = vertex.zw;
    spriteC = spriteColor;
    gl_Position = projection * model * vec4(vertex.xy, 0.0, 1.0);
}
