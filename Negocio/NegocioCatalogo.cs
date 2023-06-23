﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using System.Data;

namespace Negocio
{
    public class NegocioCatalogo
    {
        public DataTable getTabla()
        {
            DaoCatalogo dao = new DaoCatalogo();
            return dao.GetTablaCatalogo();
        }

        public string getDescripcionDuracion(int minutos)
        {
            var horas = minutos / 60;
            var dias = horas / 24;
            minutos = minutos % 60;

            var desc = "";

            if (dias > 0)
                desc += (desc.Length > 0 ? " " : "") + dias + " días";

            if (horas > 0)
                desc += (desc.Length > 0 ? " " : "") + horas + " hs";

            if (minutos > 0)
                desc += (desc.Length > 0 ? " " : "") + minutos + " mins";

            return desc;
        }

        public Catalogo Get(string id)
        {
            DaoCatalogo dao = new DaoCatalogo();
            return dao.GetCatalogo(id);
        }

        public DataTable getTablaContenidoXEdad(int edad)
        {
            DaoCatalogo dc = new DaoCatalogo();
            Catalogo catalogo = new Catalogo();

            return dc.GetTablaCatalogoXEdad(edad);
        }

        public bool EliminarCatalogo(string id)
        {
            DaoCatalogo dao = new DaoCatalogo();
            Catalogo catalogo = new Catalogo();
            catalogo.IDContenido_Cat1 = id;
            int op = dao.EliminarCatalogo(catalogo);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool agregarCatalogo(string idContenido)
        {
            int cantFilas = 0;
            Catalogo catalogo = new Catalogo();
            catalogo.IDContenido_Cat1 = idContenido;
            DaoCatalogo dao = new DaoCatalogo();
            if (dao.ExisteCatalogo(catalogo) == false)
            {
                cantFilas = dao.agregarCatalogo(catalogo);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }
    }
}