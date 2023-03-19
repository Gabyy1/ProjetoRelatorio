package persistence;

import java.sql.SQLException;

import model.Relatorio;

public interface IRelatorioDao {
	public String insereRelatorio(Relatorio r) throws SQLException, ClassNotFoundException;

}
