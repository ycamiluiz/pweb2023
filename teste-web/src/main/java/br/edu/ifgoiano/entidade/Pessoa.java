package br.edu.ifgoiano.entidade;

public class Pessoa {
	private Float altura;

	public Float getAltura() {
		if(altura == null) {
			return 1.80f;
		} else {
			return altura; 
		}
	}

	public void setAltura(Float altura) {
		this.altura = altura;
	}
}
