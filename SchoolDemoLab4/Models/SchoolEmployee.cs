using System;
using System.Collections.Generic;
using SchoolDbDemo.Models;

namespace SchoolDbDemo.Models;

public partial class SchoolEmployee
{
    public int EmployeeId { get; set; }

    public string Name { get; set; } = null!;

    public string Role { get; set; } = null!;

    public virtual ICollection<Class> Classes { get; set; } = new List<Class>();

    public virtual ICollection<Grade> Grades { get; set; } = new List<Grade>();

    public virtual Teacher? Teacher { get; set; }
}
