using Microsoft.Identity.Client;

public class ClientCredentialProvider
{
    private IConfidentialClientApplication confidentialClientApplication;

    public ClientCredentialProvider(IConfidentialClientApplication confidentialClientApplication)
    {
        this.confidentialClientApplication = confidentialClientApplication;
    }
}
