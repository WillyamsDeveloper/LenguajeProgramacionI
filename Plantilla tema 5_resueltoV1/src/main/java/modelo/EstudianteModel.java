package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entidades.Estudiante;
import entidades.TipoDocumento;
import interfaces.EstudianteInterface;
import util.MySqlConexion;

public class EstudianteModel implements EstudianteInterface {

	@Override
	public List<TipoDocumento> listTipoDocumentos() {
		// TODO Auto-generated method stub
		List<TipoDocumento> listDocumentos = new ArrayList<TipoDocumento>();
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			cn = MySqlConexion.getConexion();
			String sql = "Select * from TipoDocumento";
			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {
				TipoDocumento documento = new TipoDocumento();
				documento.setId(rs.getString("idTipo"));
				documento.setDocumento(rs.getString("documento"));

				listDocumentos.add(documento);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)rs.close();
				if (pstm != null)pstm.close();
				if (cn != null)cn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return listDocumentos;
	}

	@Override
	public List<Estudiante> listEstudiante() {
		// TODO Auto-generated method stub
		return null;
	}

}
