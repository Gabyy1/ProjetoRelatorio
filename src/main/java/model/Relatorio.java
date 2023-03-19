package model;

public class Relatorio {

	int codigo;
	String tarefa;
	int vencido;
	int d0;
	int d1;
	int d2;
	int d3;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getTarefa() {
		return tarefa;
	}
	public void setTarefa(String tarefa) {
		this.tarefa = tarefa;
	}
	public int getVencido() {
		return vencido;
	}
	public void setVencido(int vencido) {
		this.vencido = vencido;
	}
	public int getD0() {
		return d0;
	}
	public void setD0(int d0) {
		this.d0 = d0;
	}
	public int getD1() {
		return d1;
	}
	public void setD1(int d1) {
		this.d1 = d1;
	}
	public int getD2() {
		return d2;
	}
	public void setD2(int d2) {
		this.d2 = d2;
	}
	public int getD3() {
		return d3;
	}
	public void setD3(int d3) {
		this.d3 = d3;
	}
	@Override
	public String toString() {
		return "Relatorio [codigo=" + codigo + ", tarefa=" + tarefa + ", vecido=" + vencido + ", d0=" + d0 + ", d1="
				+ d1 + ", d2=" + d2 + ", d3=" + d3 + "]";
	}


	
}
