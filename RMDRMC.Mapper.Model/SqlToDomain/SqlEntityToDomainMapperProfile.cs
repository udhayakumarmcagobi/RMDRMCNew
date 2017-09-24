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

        }
    }
}
