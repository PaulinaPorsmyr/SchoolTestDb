using System;
using System.Collections.Generic;
using SchoolDbDemo.Models;

namespace SchoolDbDemo.Models;

public partial class Course
{
    public int CourseId { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Grade> Grades { get; set; } = new List<Grade>();
}
