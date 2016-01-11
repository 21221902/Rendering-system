#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
struct Material
{
    vec3 color;
	
};




varying  vec2 vTextureCoord;
uniform  Material material;
uniform sampler2D tex;


void main() {
    
     vec4 textureMaterial =texture2D(tex,vTextureCoord);
	 vec4  fragment_color =  vec4(material.color,1);
	 if(textureMaterial !=vec4(0,0,0,1)){
	   fragment_color =  textureMaterial  * fragment_color;	
     }	 
	
	 gl_FragColor = fragment_color  ;	
	
   
  }