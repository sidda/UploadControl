using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadControl
{
    public partial class FileUploadControl : System.Web.UI.UserControl
    {
        public string TableName { get; set; }
        public string ColName { get; set; }
        public string ContentPath { get; set; }
        private string _filesListKey = "docslist_";

        protected void Page_Load(object sender, EventArgs e)
        {
            _filesListKey = String.Concat(_filesListKey, TableName);

            if (!IsPostBack)
            {
                var dtFilesList = GetFromDb();
                StoreInCache(_filesListKey, dtFilesList);
                PopulateGrid(dtFilesList);
            }

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            var docsTable = GetFromCache(_filesListKey) as DataTable;
            if (docsTable != null)
            {   //lets store the file
                var contentFolderPath = Server.MapPath(ContentPath);
                var fileName = string.Format("{0}/{1}", contentFolderPath, fileUpload.FileName);
                FileUpload.SaveAs(fileName);
                //add to doc list
                var dtRow = docsTable.NewRow();
                dtRow["ID"] = "ID Here";
                dtRow["File Name"] = FileUpload.FileName;
                dtRow["Description"] = Description.Text;
                docsTable.Rows.Add(dtRow);
                PopulateGrid(docsTable);
            }
        }

        private void PopulateGrid(DataTable dtTable)
        {
            FilesList.DataSource = dtTable;
            FilesList.DataBind();
        }

        public DataTable GetFromDb()
        {
            //create a table and return
            return CreateDataTable();
        }

        private object GetFromCache(string key)
        {

            if (Session[key] != null)
            {
                return Session[key];
            }
            return null;
        }
        private void StoreInCache(string key, object obj)
        {
            Session[_filesListKey] = obj;
        }

        private DataTable CreateDataTable()
        {

            var docsTable = new DataTable();
            docsTable.Columns.Add("ID", typeof(string));
            docsTable.Columns.Add("File Name", typeof(string));
            docsTable.Columns.Add("Description", typeof(string));
            return docsTable;
        }
    }
}