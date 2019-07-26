using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuhanLyPhongMachTu.QuanLyPhongMach.FormMain
{
    public partial class ThongTin : DevComponents.DotNetBar.Metro.MetroForm
    {
        public ThongTin()
        {
            InitializeComponent();
        }

        private void ThongTin_Load(object sender, EventArgs e)
        {
            rtxt_info.AppendText("Phần mêm: Quản lý phòng mạch tư\u2028");
            rtxt_info.AppendText("Phiên bản: 1.0\u2028");
            rtxt_info.AppendText("Nhóm thực hiện: Nhóm 13\u2028");
            rtxt_info.AppendText("Giáo viên hướng dẫn: Cô Đỗ Thị Thanh Tuyền\u2028");
            rtxt_info.AppendText("Thành viên trong nhóm:\u2028");
            rtxt_info.AppendText("  + Lê Thanh Tiềm\u2028");
            rtxt_info.AppendText("  + Nguyễn Đăng Thịnh\u2028");
            rtxt_info.AppendText("  + Nguyễn Doãn ĐÔng\u2028");
            rtxt_info.AppendText("  + Phan Anh Kiệt\u2028");
            rtxt_info.ReadOnly = true;
        }

        private void rtxt_info_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
