using RMDRMC.Model.Reference;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.ViewModelToDomain
{
    public class ViewModelToDomainMapperProfile : AutoMapper.Profile
    {
        public override string ProfileName
        {
            get { return "ViewModelToDomainMapperProfile"; }
        }

        public ViewModelToDomainMapperProfile()
        {
            CreateMap<RolesVM, Roles>()
                .ForMember(model => model.AccessScreens, map => map.Ignore());

            CreateMap<UsersVM, Users>()
                .ForMember(model => model.UserRole, map => map.MapFrom(m => ViewModelToDomainCustomMapper.GetSelectedUserRole(m.RoleID)));
        }
    }
}
