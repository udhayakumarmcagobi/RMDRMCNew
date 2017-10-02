using RMDRMC.Data.Sql;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.SqlToDomain
{
    public class SqlEntityToDomainMapperProfile : AutoMapper.Profile
    {
        public override string ProfileName
        {
            get { return "SqlEntityToDomainMapperProfile"; }
        }

        public SqlEntityToDomainMapperProfile()
        {
            #region User and Role

            CreateMap<Role, Roles>()
               .ForMember(model => model.RoleName, map => map.MapFrom(m => m.Name))
               .ForMember(model => model.IsActive, map => map.MapFrom(m => m.Activate))
               .ForMember(model => model.AccessScreens, map => map.MapFrom(m => m.RoleDetails));
         

            CreateMap<RoleDetail, Screen>()
               .ForMember(model => model.ScreenName, map => map.MapFrom(m => m.ChildScreen.Name))
               .ForMember(model => model.ParentScreenID, map => map.MapFrom(m => m.ChildScreen.MainScreenID))
               .ForMember(model => model.ParentScreen, map => map.MapFrom(m => m.ChildScreen.MainScreen.Name))
               .ForMember(model => model.ScreenAccess, map => map.MapFrom(m => SqlToDomainCustomMapper.GetAccess(m.AccessID)));


            CreateMap<ChildScreen, Screen>()
               .ForMember(model => model.ScreenName, map => map.MapFrom(m => m.Name))
               .ForMember(model => model.ParentScreenID, map => map.MapFrom(m => m.MainScreenID))
               .ForMember(model => model.ParentScreen, map => map.MapFrom(m => m.MainScreen.Name));

            CreateMap<User, Users>()
               .ForMember(model => model.IsActive, map => map.MapFrom(m => m.Activate))
               .ForMember(model => model.UserRole, map => map.MapFrom(m => m.Role));

            #endregion

            #region Common Entities

            CreateMap<Data.Sql.Country, RMDRMC.Model.Reference.Country>()
               .ForMember(model => model.CountryID, map => map.MapFrom(m => m.ID))
               .ForMember(model => model.CountryName, map => map.MapFrom(m => m.CountryName));

            CreateMap<Data.Sql.State, RMDRMC.Model.Reference.State>()
               .ForMember(model => model.StateID, map => map.MapFrom(m => m.ID))
               .ForMember(model => model.StateName, map => map.MapFrom(m => m.StateName));

            CreateMap<Data.Sql.Department, RMDRMC.Model.Reference.Department>()
               .ForMember(model => model.DepartmentID, map => map.MapFrom(m => m.ID))
               .ForMember(model => model.DepartmentName, map => map.MapFrom(m => m.DepartmentName));

            CreateMap<Data.Sql.Designation, RMDRMC.Model.Reference.Designation>()
               .ForMember(model => model.DesignationID, map => map.MapFrom(m => m.ID))
               .ForMember(model => model.DesignationName, map => map.MapFrom(m => m.Name));

            CreateMap<Data.Sql.PaymentTerm, RMDRMC.Model.Reference.PaymentTerm>()
               .ForMember(model => model.PaymentTermID, map => map.MapFrom(m => m.ID))
               .ForMember(model => model.PaymentTermName, map => map.MapFrom(m => m.Name));

            #endregion

            #region Master 

            #endregion           

        }
    }
}
