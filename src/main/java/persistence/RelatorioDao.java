package persistence;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import model.Relatorio;

public class RelatorioDao implements IRelatorioDao{
	private GenericDao gDao;

	public RelatorioDao(GenericDao gDao) {
		this.gDao = gDao;
	}

	@Override
	public String insereRelatorio(Relatorio r) throws SQLException, ClassNotFoundException {
		Connection c = gDao.getConnection();
		
		String sql = "{CALL sp_relatorio(?,?,?,?,?,?,?,?)}";
		CallableStatement cs = c.prepareCall(sql);
		cs.setInt(1, r.getCodigo());
		cs.setString(2, r.getTarefa());
		cs.setInt(3, r.getVencido());
		cs.setInt(4, r.getD0());
		cs.setInt(5, r.getD1());
		cs.setInt(6, r.getD2());
		cs.setInt(7, r.getD3());
		cs.registerOutParameter(8, Types.VARCHAR);
		cs.execute();	
		
		String saida = cs.getString(8);
		cs.close();
		c.close();
		
		return saida;
				
	}

}
