//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveManagement
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserLogin
    {
        public string UserId { get; set; }
        public string Password { get; set; }
        public Nullable<int> UserType { get; set; }
        public Nullable<int> Id { get; set; }
    
        public virtual EmployeeDetail EmployeeDetail { get; set; }
    }
}