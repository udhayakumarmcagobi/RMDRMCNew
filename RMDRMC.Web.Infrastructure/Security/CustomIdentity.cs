using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Web.Infrastructure.Services;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Infrastructure.Security
{
    [Serializable]
    public class CustomIdentity : IIdentity
    {
        #region Properties

        public IIdentity Identity { get; set; }
        public UserBaseVM userDetails { get; set; }

        #endregion

        #region Implementation of IIdentity

        public string AuthenticationType
        {
            get
            {
                return Identity.AuthenticationType;
            }
        }

        public bool IsAuthenticated
        {
            get
            {
                return Identity.IsAuthenticated;
            }
        }

        public string Name
        {
            get
            {
                return Identity.Name;
            }
        }

        #endregion

        #region Constructors

        public CustomIdentity(IIdentity  identity)
        {
            Identity = identity;

            var membershipService = new MembershipService();
            userDetails = membershipService.GetUserByLoginID(identity.Name);            

        }

        #endregion

    }
}
