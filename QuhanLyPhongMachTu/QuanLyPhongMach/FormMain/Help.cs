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
    public partial class Help : DevComponents.DotNetBar.Metro.MetroForm
    {
        private int tab;
        public Help()
        {
            InitializeComponent();
        }
        public Help(int n)
        {
            tab = n;
            InitializeComponent();
        }
        private void TrangChu()
        {
            rtxt_trangchu.AppendText("Muốn đăng nhập vào hệ thống cần phải:\u2028");
            rtxt_trangchu.AppendText(" - Điền tên đăng nhập vào ô 'Tài khoản'.\u2028");
            rtxt_trangchu.AppendText(" - Điền tên mật khẩu vào ô 'Mật khẩu'.\u2028");
           
            rtxt_trangchu.AppendText("\u2028");
            rtxt_trangchu.AppendText("                                                                                              ");
            //Bitmap mybitmap = new Bitmap(Properties.Resources.pic1);
            //Clipboard.SetDataObject(mybitmap);
            //DataFormats.Format myformat = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_trangchu.Paste(myformat);
            rtxt_trangchu.AppendText("\u2028");
            rtxt_trangchu.AppendText("                                                                                                                           (Đăng nhập)\u2028");
            rtxt_trangchu.AppendText("\u2028");
            rtxt_trangchu.AppendText("Nếu muốn đổi mật khẩu:\u2028");
            rtxt_trangchu.AppendText(" - Click chuột trái vào ô 'Đổi mật khẩu'\u2028");
            rtxt_trangchu.AppendText(" - Sau đó:\u2028");
            rtxt_trangchu.AppendText("     + Điền mật khẩu cũ \u2028");
            rtxt_trangchu.AppendText("     + Điền mật khẩu mới'\u2028");
            rtxt_trangchu.AppendText("     + Nhập lại mật khẩu mới '\u2028");
            rtxt_trangchu.AppendText("\u2028");
            rtxt_trangchu.AppendText("                                                                          ");
            //Bitmap mybitmap1 = new Bitmap(Properties.Resources.pic2);
            //Clipboard.SetDataObject(mybitmap1);
            //DataFormats.Format myformat1 = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_trangchu.Paste(myformat1);
            rtxt_trangchu.AppendText("\u2028");
            rtxt_trangchu.AppendText("                                                                                                                              (Đổi mật khẩu)");
        }
        private void DanhSach()
        {
            rtxt_danhsach.AppendText("Có 3 vùng như sau:\u2028");
            rtxt_danhsach.AppendText("  * Thêm bệnh nhân:\u2028");
            rtxt_danhsach.AppendText("      - Nhập tên vào ô 'Họ tên'.\u2028");
            rtxt_danhsach.AppendText("      - Nhập địa chỉ vào ô 'Địa chỉ'.\u2028");
            rtxt_danhsach.AppendText("      - Chọn 1 trong 2 giới tính có sẵn: nam hoặc nữ.\u2028");
            rtxt_danhsach.AppendText("      - Chọn ngày tháng năm sinh của bệnh nhân.\u2028");
            rtxt_danhsach.AppendText("      - Chọn ngày tháng năm khám bệnh của bệnh nhân.\u2028");
            rtxt_danhsach.AppendText("      - Nháy vào nút 'Thêm' để hoàn tất.\u2028");
           
            rtxt_danhsach.AppendText("\u2028");
            //Bitmap mybitmap = new Bitmap(Properties.Resources.pic3);
            //Clipboard.SetDataObject(mybitmap);
            //DataFormats.Format myformat = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_danhsach.Paste(myformat);
            rtxt_danhsach.AppendText("\u2028");
            rtxt_danhsach.AppendText("                                                                                                                              (Thêm bệnh nhân)\u2028");
            rtxt_danhsach.AppendText("\u2028");
            rtxt_danhsach.AppendText("  * Cập nhật lại thông tin của bệnh nhân:\u2028");
            rtxt_danhsach.AppendText("      - Chọn bệnh nhân cần cập nhật trong danh sách bệnh nhân đã đăng ký.\u2028");
            rtxt_danhsach.AppendText("      - Nhập lại các thông tin cần cập nhật \u2028");
            rtxt_danhsach.AppendText("      - Click chuột trái vào nút 'Cập nhật'\u2028");
        
            //Bitmap mybitmap1 = new Bitmap(Properties.Resources.pic4);
            //Clipboard.SetDataObject(mybitmap1);
            //DataFormats.Format myformat1 = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_danhsach.Paste(myformat1);
            rtxt_danhsach.AppendText("\u2028");
            rtxt_danhsach.AppendText("                                                                                                                              (Cập nhật bệnh nhân)\u2028");
            rtxt_danhsach.AppendText("\u2028");
            rtxt_danhsach.AppendText("  * Xóa bệnh nhân ra khỏi danh sách:\u2028");
            rtxt_danhsach.AppendText("      - Chọn bệnh nhân cần xóa trong danh sách bệnh nhân đã đăng ký.\u2028");
            rtxt_danhsach.AppendText("      - Nháy vào nút 'Xóa', một hộp thoại xuất hiện để xác nhận việc xóa bệnh nhân đã chọn, nhấn 'OK' để xóa, nhấn 'Cancel' để không xóa.\u2028");
            //Bitmap mybitmap2 = new Bitmap(Properties.Resources.pic5);
            //Clipboard.SetDataObject(mybitmap2);
            //DataFormats.Format myformat2 = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_danhsach.Paste(myformat2);
            //rtxt_danhsach.AppendText("\u2028");
            //rtxt_danhsach.AppendText("                                                                                                                              (Xóa bệnh nhân)\u2028");
            //rtxt_danhsach.AppendText("\u2028");
            //rtxt_danhsach.AppendText("*** Các lưu ý đặc biệt:\u2028");
            //rtxt_danhsach.AppendText("      - Nháy vào 1 bệnh nhân trong dánh sách để chọn bệnh nhân.\u2028");
            //rtxt_danhsach.AppendText("      - Nháy vào khoảng trống để bỏ chọn bệnh nhân.\u2028");
            //rtxt_danhsach.AppendText("      - Khi nhập dữ liệu tại 1 ô hoàn tất, có thể ấn phím 'Enter' để chuyển ô nhập dữ liệu khác.\u2028");
            //rtxt_danhsach.AppendText("      - Không xóa các bệnh nhân đã khám bệnh, đang thanh toán hóa đơn hoặc đã thanh toán hóa đơn.\u2028");
        }
        private void ChiTietBenhNhan()
        {
            rtxt_chitiet.AppendText(" *Để tiến hành thêm chi tiết phiếu khám bệnh cho một bệnh nhân, cần phải chọn bệnh nhân trên danh sách bệnh nhân chờ khám. Sau đó thông tin bệnh nhân được hiển thị lên, xem thông tin có phải là bệnh nhân cần lập phiếu khám bệnh hay không.\u2028");
            rtxt_chitiet.AppendText("\u2028");
            //Bitmap mybitmap = new Bitmap(Properties.Resources.pic6);
            //Clipboard.SetDataObject(mybitmap);
            //DataFormats.Format myformat = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_chitiet.Paste(myformat);
            rtxt_chitiet.AppendText("\u2028");
            rtxt_chitiet.AppendText("\u2028");
            rtxt_chitiet.AppendText("                                                                                                                           (Chọn bệnh nhân cần khám)\u2028");
            rtxt_chitiet.AppendText("\u2028");
            rtxt_chitiet.AppendText(" * Sau khi chọn được bệnh nhân cần khám, người dùng nhập các thông tin của phiếu khám bệnh:\u2028");
            rtxt_chitiet.AppendText("   - Nhập triệu chứng bệnh của bệnh nhân tại ô 'Triệu chứng'.\u2028");
            rtxt_chitiet.AppendText("   - Nhập bệnh của bệnh nhân (có gợi ý các bệnh hiện cso trong phòng khám) tại ô 'Dự đoán tương lai'.\u2028");
            rtxt_chitiet.AppendText("   - Sau đó tiến hành kê đơn thuốc, tại dây có thao tác có thực hiện:\u2028");
            rtxt_chitiet.AppendText("       <> Thêm loại thuốc vào đơn thuốc:\u2028");
            rtxt_chitiet.AppendText("           + Nhập loại thuốc vào ô 'Thuốc' (có gợi ý).\u2028");
            rtxt_chitiet.AppendText("           + Nhập loại đơn vị của thuốc tại ô 'Đơn vị' (có gợi ý).\u2028");
            rtxt_chitiet.AppendText("           + Nhập số lượng thuốc tại ô 'Số lượng'\u2028");
            rtxt_chitiet.AppendText("           + Nhập cách dùng tại ô 'Cách dùng' (có gợi ý).\u2028");
            rtxt_chitiet.AppendText("           + Nháy vào nút 'Thêm' để hoàn tất việc thêm một loại thuốc.\u2028");
            rtxt_chitiet.AppendText("           + Lặp lại các bước trên cho đến khi nhập đủ các loại thuốc cần cho việc chữa bệnh.\u2028");
            rtxt_chitiet.AppendText("       <> Cập nhật lại đơn thuốc:\u2028");
            rtxt_chitiet.AppendText("           + Nháy vào 1 loại thuốc trên danh sách thuốc đã nhập để chọn loại thuốc đó.\u2028");
            rtxt_chitiet.AppendText("           + Tiến hành sửa chữ tại các vị trí cần thiết (việc nhập dữ liệu tương tự như thao tác thêm thuốc).\u2028");
            rtxt_chitiet.AppendText("           + Nháy vào nút 'Cập nhật' để hoàn tất quá trình cập nhật. Một hộp thoại xuất hiện yêu cầu xác nhận việc cập nhận, 'OK' nếu đồng ý thay đổi, 'Cancel' để hủy thay đổi.\u2028");
            rtxt_chitiet.AppendText("       <> Xóa một loại thuốc ra khỏi đơn thuốc:\u2028");
            rtxt_chitiet.AppendText("           + Nháy vào 1 loại thuốc trên danh sách thuốc đã nhập để chọn loại thuốc đó.\u2028");
            rtxt_chitiet.AppendText("           + Nháy vào nút 'Xóa' để hoàn tất. Một hộp thoại xuất hiện xác nhận việc xóa, 'OK' để đồng ý xóa, 'Cancel' để hủy không xóa.\u2028");
            rtxt_chitiet.AppendText("       *** Lưu ý: + Khi nhập dữ liệu, phải nhập đúng kiểu dữ liệu, không để trống bất kỳ ô nào.\u2028");
            rtxt_chitiet.AppendText("                       + Không lấy quá số lượng thuốc phòng khám hiện có.\u2028");
            rtxt_chitiet.AppendText("                       + Có thể nháy vào nút '(*)' để xem hiện tại phòng khám có những gì (bệnh, thuốc, cách dùng, ...)\u2028");
            rtxt_chitiet.AppendText("                       + Chỉ nhập những tài nguyên (bệnh, thuốc, cách dùng, đơn vị) mà phòng khám hiện có, nếu không có loại tài nguyên cần tìm thì có thể liên hệ Admin để thêm vào.\u2028");
            rtxt_chitiet.AppendText("   - Để hoàn tất phiếu khám bệnh, nháy vào nút 'Lưu'.\u2028");
            rtxt_chitiet.AppendText("\u2028");
            rtxt_chitiet.AppendText("                                           ");
            //Bitmap mybitmap1 = new Bitmap(Properties.Resources.pic7);
            //Clipboard.SetDataObject(mybitmap1);
            //DataFormats.Format myformat1 = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_chitiet.Paste(myformat1);
            rtxt_chitiet.AppendText("\u2028");
            rtxt_chitiet.AppendText("                                                                                                                      (Tạo chi tiết phiếu khám bệnh)\u2028");
        }
        private void TimKiem()
        {
            rtxt_tim.AppendText(" Có 2 chế độ tìm kiếm: Tìm theo tên và tìm theo ngày.\u2028");
            rtxt_tim.AppendText("   * Tìm theo tên:\u2028");
            rtxt_tim.AppendText("       - Nhập tên cần tìm vào ô 'Nhập tên bệnh nhân'.\u2028");
            rtxt_tim.AppendText("       - Nháy vào nút 'Tìm' để hoàn tất quá trình tìm kiếm.\u2028");
            rtxt_tim.AppendText("       - Kết quả sẽ được hiện ra ở bảng bên dưới.\u2028");
            rtxt_tim.AppendText("\u2028");
            //Bitmap mybitmap = new Bitmap(Properties.Resources.pic8);
            //Clipboard.SetDataObject(mybitmap);
            //DataFormats.Format myformat = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_tim.Paste(myformat);
            rtxt_tim.AppendText("\u2028");
            rtxt_tim.AppendText("                                                                                                                           (Tìm theo tên)\u2028");
            rtxt_tim.AppendText("\u2028");
            rtxt_tim.AppendText("   * Tìm theo ngày:\u2028");
            rtxt_tim.AppendText("       - Chọn ngày khám của bệnh nhân cần tìm.\u2028");
            rtxt_tim.AppendText("       - Nháy vào nút 'Tìm' để hoàn tất quá trình tìm kiếm.\u2028");
            rtxt_tim.AppendText("       - Kết quả sẽ được hiện ra ở bảng bên dưới.\u2028");
            rtxt_tim.AppendText("\u2028");
            //Bitmap mybitmap1 = new Bitmap(Properties.Resources.pic9);
            //Clipboard.SetDataObject(mybitmap1);
            //DataFormats.Format myformat1 = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_tim.Paste(myformat1);
            rtxt_tim.AppendText("\u2028");
            rtxt_tim.AppendText("                                                                                                                           (Tìm theo ngày)\u2028");
        }
        private void HoaDon()
        {
            rtxt_hoadon.AppendText(" * Để in hóa đơn cho một bệnh nhân, người dùng chọn bệnh nhân trực tiếp trên danh sách bệnh nhân. Sau khi chọn, ở bên dưới sẽ hiện thông tin bệnh nhân, người dùng dựa vào đó ddeeer xác định có đúng bệnh nhân cần in hóa đơn hay không\u2028");
            rtxt_hoadon.AppendText("\u2028");
            rtxt_hoadon.AppendText("                                                                                           ");
            //Bitmap mybitmap = new Bitmap(Properties.Resources.pic10);
            //Clipboard.SetDataObject(mybitmap);
            //DataFormats.Format myformat = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_hoadon.Paste(myformat);
            rtxt_hoadon.AppendText("\u2028");
            rtxt_hoadon.AppendText("                                                                                                                    (Chọn bệnh nhân)\u2028");
            rtxt_hoadon.AppendText("\u2028");
            rtxt_hoadon.AppendText(" * Sau khi chọn được bệnh nhân, chi tiết hóa đơn sẽ được xuất hiện bên cửa sổ bên phải:\u2028");
            rtxt_hoadon.AppendText("    - Chọn vị trí lưu file hóa đơn sau khi xuất (có hướng dẫn trên hình).\u2028");
            rtxt_hoadon.AppendText("    - Nháy vào nút 'Xuất hóa đơn' để in hóa đơn\u2028");
            rtxt_hoadon.AppendText("\u2028");
            rtxt_hoadon.AppendText("                                         ");
            //Bitmap mybitmap1 = new Bitmap(Properties.Resources.pic11);
            //Clipboard.SetDataObject(mybitmap1);
            //DataFormats.Format myformat1 = DataFormats.GetFormat(DataFormats.Bitmap);
            //rtxt_hoadon.Paste(myformat1);
            rtxt_hoadon.AppendText("\u2028");
            rtxt_hoadon.AppendText("                                                                                                                        (Xuất hóa đơn)");
        }
        private void BaoCao()
        {
            rtxt_baocao.AppendText(" Có hai chế độ xem báo cáo: báo cáo ngày va báo cáo sử dụng thuốc.\u2028");
            rtxt_baocao.AppendText("    * Báo cáo ngày:\u2028");
            rtxt_baocao.AppendText("        - Chọn tháng cần báo cáo tại ô 'Tháng'.\u2028");
            rtxt_baocao.AppendText("        - Nháy vào nút 'Xem báo cáo' để xem báo cáo tháng vừa chọn.\u2028");
            rtxt_baocao.AppendText("        - Chọn vị trí lưu báo cáo (có hình minh họa).\u2028");
            rtxt_baocao.AppendText("        - Nháy vào nút 'Xuất PDF' để in báo cáo.\u2028");
            Bitmap mybitmap = new Bitmap(Properties.Resources.pic12);
            Clipboard.SetDataObject(mybitmap);
            DataFormats.Format myformat = DataFormats.GetFormat(DataFormats.Bitmap);
            rtxt_baocao.Paste(myformat);
            rtxt_baocao.AppendText("\u2028");
            rtxt_baocao.AppendText("                                                                                                                             (Báo cáo ngày)\u2028");
            rtxt_baocao.AppendText("\u2028");
            rtxt_baocao.AppendText("    * Báo cáo sử dụng thuốc: các bước thực hiện tương tự báo cáo ngày.\u2028");
            rtxt_baocao.AppendText("\u2028");
            Bitmap mybitmap1 = new Bitmap(Properties.Resources.pic13);
            Clipboard.SetDataObject(mybitmap1);
            DataFormats.Format myformat1 = DataFormats.GetFormat(DataFormats.Bitmap);
            rtxt_baocao.Paste(myformat1);
            rtxt_baocao.AppendText("\u2028");
            rtxt_baocao.AppendText("                                                                                                                       (Báo cáo sử dụng thuốc)\u2028");
        }
        private void Help_Load(object sender, EventArgs e)
        {
            TrangChu();
            DanhSach();
            ChiTietBenhNhan();
            TimKiem();
            HoaDon();
            BaoCao();
            rtxt_danhsach.ReadOnly = true;
            rtxt_trangchu.ReadOnly = true;
            rtxt_chitiet.ReadOnly = true;
            rtxt_tim.ReadOnly = true;
            rtxt_hoadon.ReadOnly = true;
            rtxt_baocao.ReadOnly = true;
            if (tab == 1)
            {
                superTabControl1.SelectedTab = trangchu;
            }
            else
                if (tab == 2)
            {
                superTabControl1.SelectedTab = tab_danhsach;
            }
            else
                    if (tab == 3)
            {
                superTabControl1.SelectedTab = chitiet;
            }
            else
                        if (tab == 4)
            {
                superTabControl1.SelectedTab = timkiem;
            }
            else
                            if (tab == 5)
            {
                superTabControl1.SelectedTab = hoadon;
            }
            else
                                if (tab == 6)
            {
                superTabControl1.SelectedTab = baocao;
            }
        }

        private void rtxt_trangchu_LinkClicked(object sender, LinkClickedEventArgs e)
        {
            Help temp = new Help();
            temp.ShowDialog();
        }
        private void link_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Help temp = new Help();
            temp.ShowDialog();
        }
    }
}
