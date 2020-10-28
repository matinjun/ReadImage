#version 330 core

in vec3 vPosition;
in vec3 vColor;
out vec4 color;
uniform mat4 matrix;

void main()
{
    gl_Position = matrix * vec4(vPosition, 1.0);
    color = vec4(vPosition + vColor, 1.0);
}
