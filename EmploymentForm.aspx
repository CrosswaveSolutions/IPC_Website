<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmploymentForm.aspx.cs" Inherits="EmploymentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
        <a class="navbar-brand" href="index.html">
            <img src="img/brand.png" width="179" height="100" style="margin-top: -25px; margin-left: -36px;" alt=""/>
        </a>
    <br />
    <title>Indiana Powder Coatings</title>

    <link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700' rel='stylesheet' type='text/css'/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="style.css" rel="stylesheet"/>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div style="text-align:center">
            <asp:Label ForeColor="Red" ID="lblErrorMessage" runat="server"></asp:Label> <br />
        <span style="font-size: 18pt; font-weight:bold; color: #15599c;">Application for Employment</span><br />
            <br />
            <table style="border-color:lightsteelblue; border-width:medium; text-align:left">
                <tr>
                    <td style="width: 120px; padding:6px">Position Applying For</td>
                    <td><asp:TextBox ID="positionApplyingTo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">First Name</td>
                    <td><asp:TextBox ID="fname" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Last Name</td>
                    <td><asp:TextBox ID="lname" runat="server"></asp:TextBox></td>
                    <td style="width: 130px; padding:6px">Application Date</td>
                    <td><asp:TextBox ID="dateofapp" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Address</td>
                    <td colspan="3"><asp:TextBox ID="address" runat="server" style="width: 600px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Contact Number</td>
                    <td><asp:TextBox ID="contact" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px"">Email Address</td>
                    <td colspan="3"><asp:TextBox ID="email" runat="server" style="width: 400px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Are you 18 years old or older?</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="rdlYearsOld" runat="server" CssClass="rbl">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 240px; padding:6px">What are all the hours you are available?</td>
                    <td colspan="3"><asp:TextBox ID="AvailableHours" runat="server" style="width: 600px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 240px; padding:6px">Are you legally eligible for employment in this country?</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="rdlEligible" runat="server" CssClass="rbl">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 600px; padding:6px">Have you ever been convicted of a crime, felony or misdemeanor in the last seven (7) years?</td>
                    <td colspan="1">
                        <asp:RadioButtonList ID="rdlConvicted" runat="server" CssClass="rbl">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 240px; padding:6px">If yes, please explain</td>
                    <td colspan="3"><asp:TextBox ID="ConvictedExplain" runat="server" style="width: 600px;"></asp:TextBox></td>
               </tr>
                <tr>
                    <td colspan="4" style="padding-left:8px">
                        <span style="font-size: 8pt; color: #15599c;">Conviction will not necessarily b a bar to employment.  Each instance and explanation will be considered in relation to the position for which you are applying.</span>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <div style="text-align:center">
            <strong><span style="font-size: 14pt; color: #15599c; text-align:center">Employment History</span></strong><br />                  
            <span style="font-size: 8pt; color: #15599c;">Provide the following information for your past employers, starting with the most recent first.</span>
            <table style="border-color:lightsteelblue; border-width:medium; text-align:left">
                <tr>
                    <td style="width: 120px; padding:6px">From Month/Year</td>
                    <td><asp:TextBox ID="Emp1From" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">To Month/Year</td>
                    <td><asp:TextBox ID="Emp1To" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Employer</td>
                    <td><asp:TextBox ID="Emp1Employer" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Telephone</td>
                    <td><asp:TextBox ID="Emp1Telephone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Job Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp1JobTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Address</td>
                    <td colspan="3"><asp:TextBox ID="Emp1Address" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Immediate Supervisor</td>
                    <td colspan="3"><asp:TextBox ID="Emp1Super" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Summary of work performed</td>
                    <td colspan="3"><asp:TextBox ID="Emp1SumarryOfWork" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Supervisor Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp1SuperTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Job Responsibilities</td>
                    <td colspan="3"><asp:TextBox ID="Emp1Responsibilities" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Reason for Leaving</td>
                    <td colspan="7"><asp:TextBox ID="Emp1Reason" runat="server" style="width: 800px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Salary</td>
                    <td colspan="3"><asp:TextBox ID="Emp1Salary" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
            </table>
            <hr />
            <table style="border-color:lightsteelblue; border-width:medium; text-align:left">
                <tr>
                    <td style="width: 120px; padding:6px">From Month/Year</td>
                    <td><asp:TextBox ID="Emp2From" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">To Month/Year</td>
                    <td><asp:TextBox ID="Emp2To" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Employer</td>
                    <td><asp:TextBox ID="Emp2Employer" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Telephone</td>
                    <td><asp:TextBox ID="Emp2Telephone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Job Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp2JobTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Address</td>
                    <td colspan="3"><asp:TextBox ID="Emp2Address" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Immediate Supervisor</td>
                    <td colspan="3"><asp:TextBox ID="Emp2Super" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Summary of work performed</td>
                    <td colspan="3"><asp:TextBox ID="Emp2WorkPerformed" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Supervisor Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp2SuperTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Job Responsibilities</td>
                    <td colspan="3"><asp:TextBox ID="Emp2Response" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Reason for Leaving</td>
                    <td colspan="7"><asp:TextBox ID="Emp2Reason" runat="server" style="width: 800px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Salary</td>
                    <td colspan="3"><asp:TextBox ID="Emp2Salary" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
            </table>
            <hr />
            <table style="border-color:lightsteelblue; border-width:medium; text-align:left">
                <tr>
                    <td style="width: 120px; padding:6px">From Month/Year</td>
                    <td><asp:TextBox ID="Emp3From" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">To Month/Year</td>
                    <td><asp:TextBox ID="Emp3To" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Employer</td>
                    <td><asp:TextBox ID="Emp3Employer" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Telephone</td>
                    <td><asp:TextBox ID="Emp3Phone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Job Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp3JobTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Address</td>
                    <td colspan="3"><asp:TextBox ID="Emp3Address" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Immediate Supervisor</td>
                    <td colspan="3"><asp:TextBox ID="Emp3Super" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Summary of work performed</td>
                    <td colspan="3"><asp:TextBox ID="Emp3WorkPerformed" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Supervisor Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp3SuperTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Job Responsibilities</td>
                    <td colspan="3"><asp:TextBox ID="Emp3Response" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Reason for Leaving</td>
                    <td colspan="7"><asp:TextBox ID="Emp3Reason" runat="server" style="width: 800px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Salary</td>
                    <td colspan="3"><asp:TextBox ID="Emp3Salary" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
            </table>
            <hr />
            <table style="border-color:lightsteelblue; border-width:medium; text-align:left">
                <tr>
                    <td style="width: 120px; padding:6px">From Month/Year</td>
                    <td><asp:TextBox ID="Emp4From" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">To Month/Year</td>
                    <td><asp:TextBox ID="Emp4To" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Employer</td>
                    <td><asp:TextBox ID="Emp4Employer" runat="server"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Telephone</td>
                    <td><asp:TextBox ID="Emp4Phone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Job Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp4JobTitle" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Address</td>
                    <td colspan="3"><asp:TextBox ID="Emp4Address" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Immediate Supervisor</td>
                    <td colspan="3"><asp:TextBox ID="Emp4Super" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Summary of work performed</td>
                    <td colspan="3"><asp:TextBox ID="Emp4Performed" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Supervisor Title</td>
                    <td colspan="3"><asp:TextBox ID="Emp4Title" runat="server" style="width: 500px;"></asp:TextBox></td>
                    <td style="width: 120px; padding:6px">Job Responsibilities</td>
                    <td colspan="3"><asp:TextBox ID="Emp4Response" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Reason for Leaving</td>
                    <td colspan="7"><asp:TextBox ID="Emp4Reason" runat="server" style="width: 800px;"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 120px; padding:6px">Salary</td>
                    <td colspan="3"><asp:TextBox ID="Emp4Salary" runat="server" style="width: 500px;"></asp:TextBox></td>
                </tr>
            </table>
            <hr />
            <span style="font-size: 12pt; color: #15599c; text-align:center">AN EQUAL OPPORTUNITY EMPLOYER</span><br />   
        </div>
        <br />
        <br />
        <div style="text-align:center">
            <strong><span style="font-size: 14pt; color: #15599c; text-align:center">Skills and Qualifications</span></strong><br />     
            <div style="text-align:center; padding:6px">
                <span style="font-size: 8pt; color: #15599c;">Summarize any training, skills, licenses and/or certificates that may qualify you as being able to perform job-related functions in the position for which you are applying</span>
                <asp:TextBox ID="SkillsQualifications" runat="server" Width="1280px" Height="100px"></asp:TextBox>
            </div>
        </div>
        <br />
        <br />
        <div style="text-align:center">
            <strong><span style="font-size: 14pt; color: #15599c; text-align:center">Education Background (High School/College/Other)</span></strong><br />     
            <div style="text-align:center; padding:6px;">
                <table class="table">
                    <tr>
                        <td style="width: 120px; padding:6px">Name</td>
                        <td style="width: 120px; padding:6px">Location</td>
                        <td style="width: 120px; padding:6px">Years Completed</td>
                        <td style="width: 120px; padding:6px">Did you Graduate</td>
                        <td style="width: 120px; padding:6px">Course of Study</td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="ed1Name" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed1Location" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed1Years" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed1Graduate" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed1Courses" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="ed2Name" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed2Location" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed2Years" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed2Graduate" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed2Courses" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="ed3Name" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed3Location" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed3Years" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed3Graduate" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ed3Courses" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <br />
        <div style="text-align:center">
            <strong><span style="font-size: 14pt; color: #15599c; text-align:center">References</span></strong><br />
            <span style="font-size: 8pt; color: #15599c;">List three people other than relatives.  Previous supervisors/managers are preferred references.</span>
            <br />     
            <div style="text-align:center; padding:6px">
                <table class="table">
                    <tr>
                        <td style="width: 120px; padding:6px">Name</td>
                        <td style="width: 120px; padding:6px">Relationship</td>
                        <td style="width: 120px; padding:6px">Phone Number</td>
                        <td style="width: 120px; padding:6px">Years Known</td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="ref1Name" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref1Relationship" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref1Phone" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref1Years" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="ref2Name" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref2Relationship" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref2Phone" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref2Years" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="ref3Name" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref3Relationship" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref3Phone" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="ref3Years" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
        </div>

        <br />
        <div style="font-size: 8pt; color: #15599c;text-align:left;padding-left:12px">
            <p>I give the employer the right to contact and obtain information from all references, employers, educational institutions and to otherwise verify the accuracy of the information contained in this application and/or derived from the interview process.  I hereby release from liability the employer and its representatives for seeking, gathering and using such information and all other persons, corporations or organizations for furnishing such information.		</p>																		
																				
            <p>The employer does not unlawfully discriminate in employment and no question on this application is used for the purpose of limiting or excusing any applicant from consideration for employment on a basis prohibited by local, state or federal law.</p>																				
																				
            <p>This application is current for 90 days.  At the conclusion of this time, if I have not heard from the employer and still wish to be considered for employment, it will be necessary to fill out a new application.	</p>																			
																				
            <p>It is Indiana Powder Coating's policy that equal employment opportunities be available to all employees and applicants without regard to race, sex, color, religion, creed, national origin, age, disability, genetic information, participation in military service, sexual orientation and/or gender identity or any other protected status.	</p>																			
																				
            <p>Indiana Powder Coatings will comply with its obligation to provide reasonable accommodation to qualified individuals with disabilities. 																				
            I also understand that if I am hired, I will be required to provide proof of identity and legal work authorization and understand that Indiana Powder Coatings, Inc. participates in the E-Verify Program.  I also understand that I will be required to submit to a pre-employment drug screen and criminal background check as a condition of employment.		</p>																		
																				
            <p>By submitting my application, I attest to the fact that the information that I have provided on my application, resume, given verbally or provided in any other materials, is true and complete to the best of my knowledge and also constitutes authority to verify any and all information submitted on this application.  I understand that any misrepresentation or omission of any fact in my application, resume or any other materials, or during any interviews, can be justification for refusal of employment, or, if employed, termination from the Company's employ.																				
            </p>
        </div>

        <br />
        <br />
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>

        <!-- Put this above or near your submit button -->
        <div class="g-recaptcha" data-sitekey="6Lev6ygsAAAAADCNSoazCmoUrABlxO2nLpJqZ56Z"></div>

        <asp:Button CssClass="btn-default" ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
    </form>
</body>
</html>
