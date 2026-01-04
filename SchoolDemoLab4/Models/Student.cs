using System;
using System.Collections.Generic;
using SchoolDbDemo.Models;

namespace SchoolDbDemo.Models;

public partial class Student
{
    public int StudentId { get; set; }

    public string Name { get; set; } = null!;

    public string SocialSecurityNumber { get; set; } = null!;

    public string? Address { get; set; }

    public int? ClassId { get; set; }

    public virtual ICollection<Grade> Grades { get; set; } = new List<Grade>();

    public virtual Class Class { get; set; }
}
