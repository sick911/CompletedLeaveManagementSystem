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
    
    public partial class LeaveApplication
    {
        public int Application_id { get; set; }
        public Nullable<int> EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string LeaveTypeName { get; set; }
        public Nullable<System.DateTime> DateOfApplication { get; set; }
        public Nullable<int> NumberOfDays { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public string Comments { get; set; }
        public Nullable<System.DateTime> DateOfApproval { get; set; }
        public string Statuss { get; set; }
    
        public virtual EmployeeDetail EmployeeDetail { get; set; }
    }
}
