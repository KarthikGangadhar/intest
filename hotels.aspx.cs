using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using HotelService;
using System.ServiceModel;

public partial class Hotels : System.Web.UI.Page
{
    HotelsSoap soap;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Define the Soap Client
        BasicHttpBinding binding = new BasicHttpBinding();
        EndpointAddress address = new EndpointAddress("http://ws-design.idevdesign.net/hotels.asmx");
        soap = new HotelsSoapClient(binding, address);

        //Get Hotel Data
        GetHotelData();
    }

    private void GetHotelData()
    {
        //Define Credentials
        HotelCredentials credentials = new HotelCredentials();
        credentials.username = "aeTraining";
        credentials.password = "ZZZ";

        //Define Request parameters
        GetHotelRequest req = new GetHotelRequest();
        req.HotelCredentials = credentials;
        req.hotelId = 105304;

        //Define a Hotel object
        Hotel hotel = new Hotel();

        //Get Response in the Hotel Object
        GetHotelResponse response = new GetHotelResponse();
        response = soap.GetHotel(req);
        hotel = response.GetHotelResult;

        if (hotel != null)
        {
            //Bind Data to controls
            lblHotelId.Text = "Hotel ID: " + hotel.HotelID.ToString();
            lblHotelName.Text = "Hotel Name: " + (string.IsNullOrEmpty(hotel.Name) ? string.Empty : hotel.Name);
            lblAirportCode.Text = "Hotel AirportCode: " + hotel.AirportCode.ToString();
            lblAddress.Text = "Hotel Address: " + (string.IsNullOrEmpty(hotel.Address1) ? string.Empty : hotel.Address1)
                            + "<br />" + (string.IsNullOrEmpty(hotel.Address2) ? string.Empty : hotel.Address2)
                            + "<br />" + (string.IsNullOrEmpty(hotel.Address3) ? string.Empty : hotel.Address3);
        }

    }
}
