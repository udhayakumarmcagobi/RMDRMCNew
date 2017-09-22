
namespace RMDRMC.Mapper.Model
{
    public class AutoMappers
    {
        public static TDestination Map<TSource, TDestination>(TSource source)
        {
            return AutoMapper.Mapper.Map<TSource, TDestination>(source);
        }

        public static TDestination Map<TSource, TDestination>(TSource source, TDestination destination)
        {
            return AutoMapper.Mapper.Map<TSource, TDestination>(source, destination);
        }
    }
}
