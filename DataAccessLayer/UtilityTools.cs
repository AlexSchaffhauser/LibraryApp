using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace LibraryApp.DataAccessLayer
{
    public class UtilityTools
    {
        public static string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["LibraryDB"].ConnectionString;
        }

        public static int InsertStudent(BusinessLayer.Student student)
        {
            SqlConnection conn;
            SqlCommand cmd;

            using (conn = new SqlConnection(GetConnectionString()))
            {
                try
                {
                    //string sql = "INSERT INTO Student (firstName, lastName, birthdate, gender, class) VALUES (@FirstName, @LastName, @BirthDate, @Gender, @Class)";
                    string sql = "sp_InsertStudentInfo";

                    conn.Open();

                    using (cmd = new SqlCommand(sql, conn))
                    {
                        SqlParameter[] param = new SqlParameter[5];
                        param[0] = new SqlParameter("@FirstName", System.Data.SqlDbType.VarChar, 50);
                        param[1] = new SqlParameter("@LastName", System.Data.SqlDbType.VarChar, 50);
                        param[2] = new SqlParameter("@BirthDate", System.Data.SqlDbType.Date);
                        param[3] = new SqlParameter("@Gender", System.Data.SqlDbType.VarChar, 6);
                        param[4] = new SqlParameter("@Class", System.Data.SqlDbType.VarChar, 50);

                        param[0].Value = student.FirstName;
                        param[1].Value = student.LastName;
                        param[2].Value = student.BirthDate;
                        param[3].Value = student.Gender;
                        param[4].Value = student.Class;

                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }

                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        return 1;
                    }
                }
                catch (SqlException ex)
                {
                    return ex.ErrorCode;
                }
            }
        }

        public static int InsertBook(BusinessLayer.Author author, BusinessLayer.Type type, BusinessLayer.Book book)
        {
            SqlConnection conn;
            SqlCommand cmd;

            using (conn = new SqlConnection(GetConnectionString()))
            {
                try
                {
                    string sql = "sp_InsertBookInfo";

                    conn.Open();

                    using (cmd = new SqlCommand(sql, conn))
                    {
                        SqlParameter[] param = new SqlParameter[6];
                        param[0] = new SqlParameter("@FirstName", System.Data.SqlDbType.VarChar, 50);
                        param[1] = new SqlParameter("@LastName", System.Data.SqlDbType.VarChar, 50);
                        param[2] = new SqlParameter("@TypeName", System.Data.SqlDbType.VarChar, 50);
                        param[3] = new SqlParameter("@Title", System.Data.SqlDbType.VarChar, 50);
                        param[4] = new SqlParameter("@PageCount", System.Data.SqlDbType.Int);
                        param[5] = new SqlParameter("@Price", System.Data.SqlDbType.Decimal, 18); //not properly specified

                        param[0].Value = author.FirstName;
                        param[1].Value = author.LastName;
                        param[2].Value = type.Name;
                        param[3].Value = book.Title;
                        param[4].Value = book.PageCount;
                        param[5].Value = book.Price;

                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }

                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        return 1;
                    }
                }
                catch (SqlException ex)
                {
                    return ex.ErrorCode;
                }
            }
        }
    }
}