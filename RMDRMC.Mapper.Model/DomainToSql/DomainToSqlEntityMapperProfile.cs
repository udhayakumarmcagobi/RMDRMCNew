using RMDRMC.Data.Sql;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.DomainToSql
{
    public class DomainToSqlEntityMapperProfile : AutoMapper.Profile
    {
        public override string ProfileName
        {
            get { return "DomainToSqlEntityMapperProfile"; }
        }

        public DomainToSqlEntityMapperProfile()
        {
            CreateMap<Roles, Role>()
               .ForMember(model => model.Name, map => map.MapFrom(m => m.RoleName))
               .ForMember(model => model.RoleDetails, map => map.MapFrom(m => m.AccessScreens));


            CreateMap<Roles, RoleDetail>()
                 .ForMember(model => model.RoleID, map => map.MapFrom(m => m.RoleID));

            CreateMap<Screen, ChildScreen>()
                   .ForMember(model => model.Name, map => map.MapFrom(m => m.ScreenName))
                   .ForMember(model => model.ScreenID, map => map.MapFrom(m => m.ScreenID))
                   .ForMember(model => model.MainScreen, map => map.MapFrom(m => m.ParentScreen))
                   .ForMember(model => model.MainScreenID, map => map.MapFrom(m => m.ParentScreenID))
                   ;
        }
    }
}
