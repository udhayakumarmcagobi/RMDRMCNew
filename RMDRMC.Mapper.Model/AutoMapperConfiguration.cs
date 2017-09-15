using RMDRMC.Mapper.Model.DomainToSql;
using RMDRMC.Mapper.Model.DomainToViewModel;
using RMDRMC.Mapper.Model.SqlToDomain;
using RMDRMC.Mapper.Model.ViewModelToDomain;

namespace RMDRMC.Mapper.Model
{
    public class AutoMapperConfiguration
    {
        public static void Configure()
        { 
            AutoMapper.Mapper.Initialize(x =>
            {
                x.AddProfile<DomainToSqlEntityMapperProfile>();
                x.AddProfile<DomainToViewModelMapperProfile>();
                x.AddProfile<SqlEntityToDomainMapperProfile>();
                x.AddProfile<ViewModelToDomainMapperProfile>();

            });
        }
    }
}
