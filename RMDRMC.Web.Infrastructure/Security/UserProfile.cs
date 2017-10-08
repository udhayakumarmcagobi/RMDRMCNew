using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace RMDRMC.Web.Infrastructure.Security
{
    public class UserProfile
    {
        private static IIdentity identity;
        private UserProfile()
        {

        }

        private CustomPrincipal customPrinciple;
        private static CustomPrincipal CustomPrinciple
        {
            get
            {
                UserProfile userProfile = new UserProfile();

                userProfile.customPrinciple = HttpContext.Current.User as CustomPrincipal;

                if(userProfile.customPrinciple == null)
                {
                    var customIdenity = new CustomIdentity(identity);
                    userProfile.customPrinciple = new CustomPrincipal(customIdenity);
                }
                return userProfile.customPrinciple;
            }
        }

        #region public Properties

        public static string LoginID
        {
            get
            {
                if (CustomPrinciple.CustomIdentity.userDetails != null)
                {
                    return CustomPrinciple.CustomIdentity.userDetails.LoginID;
                }

                return string.Empty;
            }
        }

        public static string RoleName
        {
            get
            {
                if (CustomPrinciple.CustomIdentity.userDetails != null)
                {
                    return CustomPrinciple.CustomIdentity.userDetails.UserRoleSelected?.RoleName;
                }

                return string.Empty;
            }
        }

        public static bool IsAdmin
        {
            get
            {
                if (CustomPrinciple.CustomIdentity.userDetails != null)
                {
                    return CustomPrinciple.CustomIdentity.userDetails.IsAdmin;
                }

                return false;
            }
        }

        public static bool IsAuthenticated
        {
            get
            {
                if (CustomPrinciple.CustomIdentity != null)
                {
                    return CustomPrinciple.CustomIdentity.IsAuthenticated;
                }

                return false;
            }
        }

        public static List<ScreenVM> UserAccessibleScreens
        {
            get
            {
                if (CustomPrinciple.CustomIdentity.userDetails != null)
                {
                    var accessibleScreens = CustomPrinciple.CustomIdentity.userDetails.UserRoleSelected.ParentScreens.
                                        Where(x => x.ChildScreens.Any(y => y.IsViewer || y.IsModifier)).ToList();

                    FilterChildScreenAcess(accessibleScreens);

                    accessibleScreens = CustomerOrderAccessibleScreens(accessibleScreens);

                    return accessibleScreens;

                }

                return new List<ScreenVM>();
            }
        }

        /// <summary>
        /// Session ID of the current user Session
        /// </summary>
        public static string SessionId
        {
            get
            {
                return HttpContext.Current.Session.SessionID;
            }
        }

        public static void FilterChildScreenAcess(List<ScreenVM> accessibleScreens)
        {
            accessibleScreens.ForEach(x => x.ChildScreens = x.ChildScreens.Where(y => y.IsModifier || y.IsViewer).ToList());
        }

        public static List<ScreenVM> CustomerOrderAccessibleScreens(List<ScreenVM> accessibleScreens)
        {
            return accessibleScreens.OrderBy(x => x.ScreenName.StartsWith("U") ? 1
        : x.ScreenName.StartsWith("M") ? 2
        : x.ScreenName.StartsWith("PO") ? 3
        : x.ScreenName.StartsWith("Inven") ? 4
        : x.ScreenName.StartsWith("V") ? 5
        : x.ScreenName.StartsWith("Job") ? 6
        : x.ScreenName.StartsWith("In") ? 7 : 8).ToList();
        }
        #endregion
    }
}
