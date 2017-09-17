using RMDRMC.Model.Enum;
using RMDRMC.Model.Reference;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.DomainToViewModel
{
    public class DomainToViewModelMapperProfile : AutoMapper.Profile
    {
        public override string ProfileName
        {
            get { return "DomainToViewModelMapperProfile"; }
        }

        public DomainToViewModelMapperProfile()
        {
            CreateMap<Roles, RolesVM>()
                .ForMember(model => model.ParentScreens, map => map.Ignore());

            CreateMap<Screen, ScreenVM>()
                  .ForMember(model => model.IsViewer, map => map.MapFrom(m => DomainToViewModelCustomMapper.IsViewer(m.ScreenAccess)))
                  .ForMember(model => model.IsModifier, map => map.MapFrom(m => DomainToViewModelCustomMapper.IsModfier(m.ScreenAccess)));
        }
    }
}
