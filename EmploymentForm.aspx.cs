using System;
using Azure.Identity;
using System.Text;
using System.Collections.Generic;
using Microsoft.Graph.Models;
using Microsoft.Graph;
using Microsoft.Identity.Client;
using System.Threading.Tasks;
using System.Net;
using System.Web.Script.Serialization;

// Class MUST match Google's JSON schema
public class RecaptchaResponse
{
    public bool success { get; set; }
    public string[] errorcodes { get; set; }  // optional
}

public partial class EmploymentForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblErrorMessage.Text = "";
    }

    private string CreateEmailBody()
    {
        string returnValue = "";


        returnValue = "Position Applying for:  " + positionApplyingTo.Text + " <br/> " +
                      "Name:  " + fname.Text + " " + lname.Text + " <br/> " +
                      "Date of Application:  " + dateofapp.Text + " <br/> " +
                      "Address:  " + address.Text + " <br/> " +
                      "Phone Number:  " + contact.Text + " <br/> " +
                      "Email:  " + email.Text + " <br/> " +
                      "18 years old?:  " + rdlYearsOld.Text + " <br/> " +
                      "Available Hours:  " + AvailableHours.Text + " <br/> " +
                      "Legally eligible for employment:  " + rdlEligible.Text + "<br/>" +
                      "Convicted of a crime?:  " + rdlConvicted.Text + "<br/>" +
                      "     Explanation:  " + ConvictedExplain.Text + "<br/>" +
                      "<br/>" +
                      "<br/>" +
                      "Employment History <br/>" +
                      "     Employer:  " + Emp1Employer.Text + "<br/>" +
                      "     Job Title:  " + Emp1JobTitle.Text + "<br/>" +
                      "     From Month/Year:  " + Emp1From.Text + " <br/> To Month/Year:  " + Emp1To.Text + "<br/>" +
                      "     Immediate Supervisor:  " + Emp1Super.Text + "<br/>" +
                      "     Supervisor Title:  " + Emp1SuperTitle.Text + "<br/>" +
                      "     Telephone:  " + Emp1Telephone.Text + "<br/>" +
                      "     Address:  " + Emp1Address.Text + "<br/>" +
                      "     Summary of work performed:  " +  Emp1SumarryOfWork.Text + "<br/>" +
                      "     Job Responsibilities:  " + Emp1Responsibilities.Text + "<br/>" +
                      "     Reason for Leaving:  " + Emp1Reason.Text + "<br/>" +
                      "     Salary:  " + Emp1Salary.Text + "<br/>" +
                      "     ----------------------------------------------------------------------------------------------------" + "<br/>" +
                      "     Employer:  " + Emp2Employer.Text + "<br/>" +
                      "     Job Title:  " + Emp2JobTitle.Text + "<br/>" +
                      "     From Month/Year:  " + Emp2From.Text + " <br/> To Month/Year:  " + Emp2To.Text + "<br/>" +
                      "     Immediate Supervisor:  " + Emp2Super.Text + "<br/>" +
                      "     Supervisor Title:  " + Emp2SuperTitle.Text + "<br/>" +
                      "     Telephone:  " + Emp2Telephone.Text + "<br/>" +
                      "     Address:  " + Emp2Address.Text + "<br/>" +
                      "     Summary of work performed:  " + Emp2WorkPerformed.Text + "<br/>" +
                      "     Job Responsibilities:  " + Emp2Response.Text + "<br/>" +
                      "     Reason for Leaving:  " + Emp2Reason.Text + "<br/>" +
                      "     Salary:  " + Emp2Salary.Text + "<br/>" +
                      "     ----------------------------------------------------------------------------------------------------" + "<br/>" +
                      "     Employer:  " + Emp3Employer.Text + "<br/>" +
                      "     Job Title:  " + Emp3JobTitle.Text + "<br/>" +
                      "     From Month/Year:  " + Emp3From.Text + " <br/> To Month/Year:  " + Emp3To.Text + "<br/>" +
                      "     Immediate Supervisor:  " + Emp3Super.Text + "<br/>" +
                      "     Supervisor Title:  " + Emp3SuperTitle.Text + "<br/>" +
                      "     Telephone:  " + Emp3Phone.Text + "<br/>" +
                      "     Address:  " + Emp3Address.Text + "<br/>" +
                      "     Summary of work performed:  " + Emp3WorkPerformed.Text + "<br/>" +
                      "     Job Responsibilities:  " + Emp3Response.Text + "<br/>" +
                      "     Reason for Leaving:  " + Emp3Reason.Text + "<br/>" +
                      "     Salary:  " + Emp3Salary.Text + "<br/>" +
                      "     ----------------------------------------------------------------------------------------------------" + "<br/>" +
                      "     Employer:  " + Emp4Employer.Text + "<br/>" +
                      "     Job Title:  " + Emp4JobTitle.Text + "<br/>" +
                      "     From Month/Year:  " + Emp4From.Text + " <br/> To Month/Year:  " + Emp4To.Text + "<br/>" +
                      "     Immediate Supervisor:  " + Emp4Super.Text + "<br/>" +
                      "     Supervisor Title:  " + Emp4Title.Text + "<br/>" +
                      "     Telephone:  " + Emp4Phone.Text + "<br/>" +
                      "     Address:  " + Emp4Address.Text + "<br/>" +
                      "     Summary of work performed:  " + Emp4Performed.Text + "<br/>" +
                      "     Job Responsibilities:  " + Emp4Response.Text + "<br/>" +
                      "     Reason for Leaving:  " + Emp4Reason.Text + "<br/>" +
                      "     Salary:  " + Emp4Salary.Text + "<br/>" +
                      "<br/>" +
                      "<br/>" +
                      "Skills and Qualifications <br/>" + 
                      "     " + SkillsQualifications.Text + "<br/>" +
                      "<br/>" +
                      "<br/>" +
                      "Education Background" + "<br/>" +
                      "     Name:  " + ed1Name.Text + "<br/>" +
                      "     Location:  " + ed1Location.Text + "<br/>" +
                      "     Years Completed:  " + ed1Years.Text + "<br/>" +
                      "     Did you Graduate:  " + ed1Graduate.Text + "<br/>" +
                      "     Course of Study:  " + ed1Courses.Text + "<br/>" +
                      "     --------------------------------------------------------" + "<br/>" +
                      "     Name:  " + ed2Name.Text + "<br/>" +
                      "     Location:  " + ed2Location.Text + "<br/>" +
                      "     Years Completed:  " + ed2Years.Text + "<br/>" +
                      "     Did you Graduate:  " + ed2Graduate.Text + "<br/>" +
                      "     Course of Study:  " + ed2Courses.Text + "<br/>" +
                      "     --------------------------------------------------------" + "<br/>" +
                      "     Name:  " + ed3Name.Text + "<br/>" +
                      "     Location:  " + ed3Location.Text + "<br/>" +
                      "     Years Completed:  " + ed3Years.Text + "<br/>" +
                      "     Did you Graduate:  " + ed3Graduate.Text + "<br/>" +
                      "     Course of Study:  " + ed3Courses.Text + "<br/>" +
                      "<br/>" +
                      "<br/>" +
                      "References <br/>" +
                      "     Name:  " + ref1Name.Text + "<br/>" +
                      "     Relationship:  " + ref1Relationship.Text + "<br/>" +
                      "     Phone Number:  " + ref1Phone.Text + "<br/>" +
                      "     Years Known:  " + ref1Years.Text + "<br/>" +
                      "     --------------------------------------------------------" + "<br/>" +
                      "     Name:  " + ref2Name.Text + "<br/>" +
                      "     Relationship:  " + ref2Relationship.Text + "<br/>" +
                      "     Phone Number:  " + ref2Phone.Text + "<br/>" +
                      "     Years Known:  " + ref2Years.Text + "<br/>" +
                      "     --------------------------------------------------------" + "<br/>" +
                      "     Name:  " + ref3Name.Text + "<br/>" +
                      "     Relationship:  " + ref3Relationship.Text + "<br/>" +
                      "     Phone Number:  " + ref3Phone.Text + "<br/>" +
                      "     Years Known:  " + ref3Years.Text + "<br/>" +
                      "";

        return returnValue;
    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        /*
            Username - application@indianapowdercoatings.com
            Password - Expedited3-Husked-Bobsled-Coleslaw
            
            Below are the OAuth Tenent/Client IDs and Client Secret
                Tenant ID – e8f1c112-d1ce-4d57-ab8d-8ec62e10bd2a
                Client ID – 9e032e88-7a42-4559-9d2f-b60362a719ff
                Client Secret – hmz8Q~6xe5X8z336yHfC-.8v1KF-ege4h~Q-vaVZ

        //site key:  6Lev6ygsAAAAADCNSoazCmoUrABlxO2nLpJqZ56Z
        //secret key:  6Lev6ygsAAAAAFkmv__A2InvoCxTJ7XbkL8bXhXp

        */
        try
        {
            // Get the CAPTCHA response token the browser sends
            string response = Request["g-recaptcha-response"];

            // Your secret key issued by Google
            string secretKey = "6Lev6ygsAAAAAFkmv__A2InvoCxTJ7XbkL8bXhXp";

            // Build request to Google
            string apiUrl = string.Format(
                "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}",
                secretKey, response
            );

            // Make HTTP request (WebClient works on .NET 4.0 / 4.5 / C#5)
            WebClient client = new WebClient();
            string jsonResult = client.DownloadString(apiUrl);

            // Deserialize JSON result into a simple class
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            RecaptchaResponse googleResponse = serializer.Deserialize<RecaptchaResponse>(jsonResult);

            // Validate success
            if (googleResponse.success)
            {
                //lblErrorMessage.Text = "CAPTCHA passed — form submitted!";
                // Continue processing your form logic
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                // Email sender and receiver details
                string senderEmail = "application@indianapowdercoatings.com";
                //string receiverEmail = "shauntwatts@gmail.com";
                // string receiverEmail = "hreagan@indianapowdercoatings.com";
                string receiverEmail = "tamoya.hopkins@crosswaveit.com";
                var tenantId = "e8f1c112-d1ce-4d57-ab8d-8ec62e10bd2a";
                var clientId = "9e032e88-7a42-4559-9d2f-b60362a719ff";
                // 24 month (expires 7/22/2027) - new secret - Zx98Q~1KI6E0CuRYA5EUW_CsjItaycbAyeyTFblx
                // 12 month - old secret - hmz8Q~6xe5X8z336yHfC-.8v1KF-ege4h~Q-vaVZ
                var clientSecret = "Zx98Q~1KI6E0CuRYA5EUW_CsjItaycbAyeyTFblx";

                var scopes = new[] { "https://graph.microsoft.com/.default" };

                // using Azure.Identity;
                var options = new TokenCredentialOptions
                {
                    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
                };

                // https://learn.microsoft.com/dotnet/api/azure.identity.clientsecretcredential
                var clientSecretCredential = new ClientSecretCredential(
                    tenantId, clientId, clientSecret, options);

                var graphClient = new GraphServiceClient(clientSecretCredential, scopes);

                //var requestBody = new Microsoft.Graph.Me.SendMail.SendMailPostRequestBody
                var requestBody = new Microsoft.Graph.Users.Item.SendMail.SendMailPostRequestBody
                {
                    Message = new Message
                    {
                        Subject = fname.Text + " " + lname.Text + " - Position Applying for:  " + positionApplyingTo.Text,
                        Body = new ItemBody
                        {
                            ContentType = BodyType.Html,
                            Content = CreateEmailBody(),
                        },
                        ToRecipients = new List<Recipient>
                    {
                        new Recipient
                        {
                            EmailAddress = new EmailAddress
                            {
                                Address = receiverEmail,
                            },
                        },
                    },
                    },
                    SaveToSentItems = false,
                };

                // Send the email
                graphClient.Users[senderEmail].SendMail.PostAsync(requestBody).Wait();

                lblErrorMessage.Text = "Email sent Successfully.";
            }
            else
            {
                lblErrorMessage.Text = "CAPTCHA verification failed — please try again.";
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "Error sending email: " + ex.InnerException;
        }
        finally
        {
            // Clean up resources
            //mailMessage.Dispose();
            Response.Redirect("Index.html");
        }
    }
}
