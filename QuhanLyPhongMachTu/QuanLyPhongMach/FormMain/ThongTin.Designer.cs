namespace QuhanLyPhongMachTu.QuanLyPhongMach.FormMain
{
    partial class ThongTin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.styleManager1 = new DevComponents.DotNetBar.StyleManager(this.components);
            this.rtxt_info = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // styleManager1
            // 
            this.styleManager1.ManagerStyle = DevComponents.DotNetBar.eStyle.OfficeMobile2014;
            this.styleManager1.MetroColorParameters = new DevComponents.DotNetBar.Metro.ColorTables.MetroColorGeneratorParameters(System.Drawing.Color.White, System.Drawing.Color.FromArgb(((int)(((byte)(183)))), ((int)(((byte)(71)))), ((int)(((byte)(42))))));
            // 
            // rtxt_info
            // 
            this.rtxt_info.BackColor = System.Drawing.Color.White;
            this.rtxt_info.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.rtxt_info.ForeColor = System.Drawing.Color.Black;
            this.rtxt_info.Location = new System.Drawing.Point(-1, 2);
            this.rtxt_info.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rtxt_info.Name = "rtxt_info";
            this.rtxt_info.Size = new System.Drawing.Size(383, 321);
            this.rtxt_info.TabIndex = 0;
            this.rtxt_info.Text = "";
            this.rtxt_info.TextChanged += new System.EventHandler(this.rtxt_info_TextChanged);
            // 
            // ThongTin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(379, 321);
            this.Controls.Add(this.rtxt_info);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ThongTin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thông tin";
            this.Load += new System.EventHandler(this.ThongTin_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.StyleManager styleManager1;
        private System.Windows.Forms.RichTextBox rtxt_info;
    }
}