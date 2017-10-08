using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Helpers
{
    public class UtilityHelpers
    {
        public static JsonResult GetJsonResult(object result, object data)
        {
            return new JsonResult
            {
                Data = new
                {
                    result = result,
                    data = data
                }

            };
        }

        public static JsonResult GetJsonResult(object result, object data, object IsAdditionalFlag)
        {
            return new JsonResult
            {
                Data = new
                {
                    result = result,
                    data = data,
                    IsAdditionalFlag = IsAdditionalFlag
                }

            };
        }
    }
}