﻿
namespace RMDRMC.Mapper.Model
{
    public class AutoMappers
    {
        public static TDestination Map<TSource, TDestination>(TSource source)
        {
            return AutoMapper.Mapper.Map<TSource, TDestination>(source);
        }
    }
}
