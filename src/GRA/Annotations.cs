﻿namespace GRA
{
    public static class Annotations
    {
        public static class Info
        {
            public static string LetYouKnowWhen = "Thanks! We'll let you know when you can join the program.";
        }

        public static class Required
        {
            public const string Branch = "Please select a branch.";
            public const string EmailForSubscription = "To receive email updates please supply an email address to send them to.";
            public const string Field = "The {0} field is required.";
            public const string ProgramSelection = "Please select a program.";
            public const string Selection = "Please select a value for {0}.";
            public const string System = "Please select a system.";

        }

        public static class Validate
        {
            public const string Branch = "The branch you've selected is not valid, please select another branch.";
            public const string EmailConfigured = "Username '{0}' does not have an email address configured.";
            public const string EmailSubscription = "Please let us know if you would like to receive emails throughout the program.";
            public const string FirstTime = "Please let us know if this is your first time participating in the program.";
            public const string NotOpen = "The program is not accepting registrations at this time.";
            public const string NotOpenActivity = "The program is not open for activity at this time.";
            public const string NotOpenSignins = "The program is not accepting sign-ins at this time.";
            public const string Password = "The provided password is incorrect.";
            public const string PasswordsMatch = "Password and password confirmation do not match.";
            public const string Permission = "Permission denied.";
            public const string Program = "The program you've selected is not valid, please select another program.";
            public const string School = "The school you've selected is not valid, please select another school.";
            public const string System = "The system you've selected is not valid, please select another system.";
            public const string Token = "Password reset token '{0}' is not valid, please start the password reset process over.";
            public const string TokenExpired = "Password reset token '{0}' has expired, please start the password reset process over.";
            public const string Username = "Could not find username '{0}'.";
            public const string UsernameTaken = "Someone has already chosen that username.";
            public const string WholeNumber = "Please enter a whole number greater than 0.";
            public const string BookTitle = "When providing an author of a book, please also provide a title.";
            public const string CouldNotLog = "Sorry, we couldn't log your activity: {0}";
            public const string MinLength = "The field {0} must be a string or array type with a maximum length of '{1}'.";
        }
    }
}
