using System;
using System.Collections.Generic;
using SchoolDbDemo.Models;

namespace SchoolDbDemo.Models;

public partial class Teacher
{
    public int TeacherId { get; set; }

    public int? ClassId { get; set; }

    public virtual SchoolEmployee TeacherNavigation { get; set; } = null!;
}
