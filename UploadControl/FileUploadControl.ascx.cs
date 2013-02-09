using System;
using System.Collections.Generic;
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

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}