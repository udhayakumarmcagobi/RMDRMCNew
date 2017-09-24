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
    public class DomainToViewModelCustomMapper
    {
        public static bool IsViewer(ScreenAccess access)
        {
            if (access != ScreenAccess.None) return true;

            return false;
        }

        public static bool IsModfier(ScreenAccess access)
        {
            if (access == ScreenAccess.Modify) return true;

            return false;
        }        

        public static List<ScreenVM> MapParentScreens(List<Screen> screens)
        {
           return  screens.GroupBy(a => a.ParentScreenID,
                                    (aKey, aData) =>
                                    new ScreenVM()
                                    {
                                        ScreenID = aKey,
                                        ScreenName = aData.FirstOrDefault().ParentScreen,
                                        ChildScreens = AutoMappers.Map<IEnumerable<Screen>, List<ScreenVM>>(aData).OrderBy(x => x.ScreenName).ToList()

                                    }).ToList();
        }
    }
}
