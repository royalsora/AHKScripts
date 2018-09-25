using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AhkHub
{
    public partial class Form1 : Form
    {
        private DirectoryInfo maindir = null;
        private string SelectedScript = null;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            InitializeComboBox(GetDirectories());
        }

        private IEnumerable<DirectoryInfo> GetDirectories()
        {
            string path = Environment.CurrentDirectory;

            var dir = new DirectoryInfo(path);
            var dir2 = dir.Parent.Parent.Parent.Parent;
            maindir = dir2;
            var directories = dir2.EnumerateDirectories().Where(a => a.Name != "AhkHub" || a.Name != ".git");


            return directories;
        }

        private void InitializeComboBox(IEnumerable<DirectoryInfo> data)
        {
            List<string> directoryString = new List<string>();
            DirectoryInfo[] datacnt = data.ToList().ToArray();
            for (int i = 0; i < data.Count(); i++)
            {
                if (datacnt[i].Name.ToLower() == "ahkhub" || datacnt[i].Name.ToLower() == ".git")
                {
                    continue;
                }

                directoryString.Add(datacnt[i].Name);
            }
            
            if (data != null)
            {
                if (data.Count() > 0)
                {
                    comboBox1.Items.AddRange(directoryString.ToArray());
                }
            }
            comboBox1.Update();

        }

        private string[] GetAhkScripts()
        {
            return null;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox2.Items.Clear();
            SelectedScript = null;
            comboBox2.Items.AddRange(GetAhkFilesInFolder(new DirectoryInfo(maindir.ToString() + "\\" + comboBox1.SelectedItem.ToString())).ToArray());
            comboBox2.Update();
            
        }

        private List<FileInfo> GetAhkFilesInFolder(DirectoryInfo dir)
        {
            if (dir != null)
            {
                FileInfo[] files = new DirectoryInfo(Path.Combine(dir.FullName, @"..\..\..\..\..\..\" + dir.Name)).GetFiles().Where(a => a.Name.EndsWith(".ahk")).ToArray();
                List<FileInfo> r = new List<FileInfo>();

                foreach (var file in files)
                {
                    if (file.Name.EndsWith(".ahk"))
                    {
                        r.Add(file);
                    }
                }

                return r;
            }
            return null;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //execute script
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SelectedScript = comboBox2.SelectedIndex;
        }
    }
}
