using SchoolDbDemo.Data;
using SchoolDbDemo.Models;

class Program
{
    static void Main()
    {
        using var context = new SchoolTestDbContext();
        bool running = true;

        while (running)
        {
            Console.WriteLine("\n--- MENU ---");
            Console.WriteLine("1. Get all students");
            Console.WriteLine("2. Get students in a class");
            Console.WriteLine("3. Add new student");
            Console.WriteLine("4. Get employees");
            Console.WriteLine("5. Add new employee");
            Console.WriteLine("0. Exit");
            Console.Write("Choose: ");

            switch (Console.ReadLine())
            {
                case "1":
                    GetAllStudents(context);
                    break;
                case "2":
                    GetStudentsInClass(context);
                    break;
                case "3":
                    AddStudent(context);
                    break;
                case "4":
                    GetEmployees(context);
                    break;
                case "5":
                    AddEmployee(context);
                    break;
                case "0":
                    running = false;
                    break;
                default:
                    Console.WriteLine("Invalid choice.");
                    break;
            }
        }




        static void GetAllStudents(SchoolTestDbContext context)
        {
            Console.Write("Sort by (F)irst or (L)ast name: ");
            string sortField = Console.ReadLine();

            Console.Write("Sort order (A)scending or (D)escending: ");
            string sortOrder = Console.ReadLine();

            var students = context.Students.AsQueryable();

            if (sortField.ToUpper() == "L")
            {
                students = sortOrder.ToUpper() == "D"
                    ? students.OrderByDescending(s => s.Name.Split(' ').Last())
                    : students.OrderBy(s => s.Name.Split(' ').Last());
            }
            else
            {
                students = sortOrder.ToUpper() == "D"
                    ? students.OrderByDescending(s => s.Name)
                    : students.OrderBy(s => s.Name);
            }

            Console.WriteLine("\nStudents:");
            foreach (var s in students)
                Console.WriteLine($"{s.StudentId} - {s.Name}");
        }


        static void GetStudentsInClass(SchoolTestDbContext context)
        {
            Console.WriteLine("\nAvailable classes:");
            foreach (var c in context.Classes)
                Console.WriteLine($"ClassId: {c.ClassId}");

            Console.Write("Choose ClassId: ");
            if (!int.TryParse(Console.ReadLine(), out int classId))
            {
                Console.WriteLine("Invalid ClassId.");
                return;
            }

            var students = context.Students
                .Where(s => s.ClassId == classId);

            Console.WriteLine($"\nStudents in class {classId}:");
            foreach (var s in students)
                Console.WriteLine($"{s.StudentId} - {s.Name}");
        }

       

        static void AddStudent(SchoolTestDbContext context)
        {
            Console.Write("Name: ");
            string name = Console.ReadLine();

            Console.Write("Social Security Number: ");
            string ssn = Console.ReadLine();

            Console.Write("Address: ");
            string address = Console.ReadLine();

            Console.Write("ClassId (leave empty if none): ");
            int? classId = int.TryParse(Console.ReadLine(), out int cid) ? cid : null;

            var student = new Student
            {
                Name = name,
                SocialSecurityNumber = ssn,
                Address = address,
                ClassId = classId
            };

            context.Students.Add(student);
            context.SaveChanges();

            Console.WriteLine("Student added.");
        }

     

        static void GetEmployees(SchoolTestDbContext context)
        {
            Console.Write("Filter by role? (Y/N): ");
            var choice = Console.ReadLine();

            var employees = context.SchoolEmployees.AsQueryable();

            if (choice.ToUpper() == "Y")
            {
                Console.Write("Enter role (example: Teacher): ");
                string role = Console.ReadLine();
                employees = employees.Where(e => e.Role == role);
            }

            Console.WriteLine("\nEmployees:");
            foreach (var e in employees)
                Console.WriteLine($"{e.EmployeeId} - {e.Name} ({e.Role})");
        }

       

        static void AddEmployee(SchoolTestDbContext context)
        {
            Console.Write("Name: ");
            string name = Console.ReadLine();

            Console.Write("Role: ");
            string role = Console.ReadLine();

            var employee = new SchoolEmployee
            {
            };

        }
    }
}