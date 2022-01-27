using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Covid_Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void lnkbtnDownload_Click(object sender, EventArgs e)
    {
        String FileName = @"C:\Users\HP\Downloads\Project\3. Chest Xray\report.txt";
        FileStream file = null;
        if (!File.Exists(FileName))
        {
            using (file = File.Create(FileName))
            {

            }
        }
        if (File.Exists(FileName))
        {
            using (StreamWriter sw = new StreamWriter(FileName))
            {
                //sw.WriteLine(" ");
                //sw.WriteLine(" ");
                //sw.WriteLine(" ");
                //sw.WriteLine("               :: COVID REPORT ::                       ");
                //sw.WriteLine(" ");
                //sw.WriteLine("-----------------------------------------------");
                //sw.WriteLine(" ");

                sw.WriteLine(txtFullname.Text);
                sw.WriteLine(txtAdress.Text);
                
                sw.WriteLine(txtUid.Text);
                sw.WriteLine(txtPhone.Text);
                sw.WriteLine(txtReport.Text);
            }

            Response.Clear();
            string fileName = "~/Report/Covid_Report.txt";
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + fileName + "\"");
            Response.TransmitFile(fileName);
            Response.End();
        }

    }
}