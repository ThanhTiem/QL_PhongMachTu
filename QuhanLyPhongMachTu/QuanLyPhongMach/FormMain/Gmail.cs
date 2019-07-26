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
    public partial class Gmail : DevComponents.DotNetBar.Metro.MetroForm
    {
        public Gmail()
        {
            InitializeComponent();
        }

        private void Gmail_Load(object sender, EventArgs e)
        {

            rtxt_thongbao.AppendText("Gmail: 16521214@gm.uit.edu.vn\u2028");
            rtxt_thongbao.AppendText("FB: www.facebook.com/thanhtiem.le\u2028");
            rtxt_thongbao.AppendText("SĐT: 0968422864\u2028");
            rtxt_thongbao.ReadOnly = true;
        }
    }
}
