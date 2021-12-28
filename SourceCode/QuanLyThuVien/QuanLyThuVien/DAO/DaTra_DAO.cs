﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DAO
{
    class DaTra_DAO:DataProvider
    {
        public DataTable loadSach()
        {
            string sqlString = @"select DOCGIA.HoTen, SACH.TenSach, PHIEUTRA.NgayTra, PHIEUMUON.NgayMuon from SACH, DOCGIA, PHIEUTRA, PHIEUMUON where SACH.MaSach = PHIEUTRA.MaSach and PHIEUTRA.MaDocGia = DOCGIA.MaDocGia and SACH.MaSach = PHIEUMUON.MaSach and PHIEUMUON.MaDocGia = DOCGIA.MaDocGia";
            return GetData(sqlString);
        }
        public DataTable Search(string _timkiem, string _loaitk)
        {
            string table = "";
            if (_loaitk == "HoTen")
                table = "DOCGIA";
            else
                table = "SACH";
            string sqlString = string.Format("select DOCGIA.HoTen, SACH.TenSach, PHIEUTRA.NgayTra from SACH, DOCGIA, PHIEUTRA where SACH.MaSach = PHIEUTRA.MaSach and PHIEUTRA.MaDocGia = DOCGIA.MaDocGia and {0}.{1} like N'%{2}%'", table, _loaitk, _timkiem);
            return GetData(sqlString);
        }
    }
}
