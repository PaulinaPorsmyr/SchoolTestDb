using System;
using System.Collections.Generic;
using SchoolDbDemo.Models;

namespace SchoolDbDemo.Models;

public partial class Class
{
    public int ClassId { get; set; }

    public string Name { get; set; } = null!;

    public int TeacherId { get; set; }

    public virtual SchoolEmployee Teacher { get; set; } = null!;
}
