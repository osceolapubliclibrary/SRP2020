﻿using GRA.Domain.Model;
using GRA.Domain.Model.Filters;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace GRA.Domain.Repository
{
    public interface IAvatarItemRepository : IRepository<AvatarItem>
    {
        Task<ICollection<AvatarItem>> GetByLayerAsync(int layerId);
        Task<ICollection<AvatarItem>> GetUserItemsByLayerAsync(int userId, int layerId);
        Task<bool> HasUserUnlockedItemAsync(int userId, int itemId);
        Task<ICollection<int>> GetUserUnlockedItemsAsync(int userId);
        Task AddUserItemsAsync(int userId, List<int> itemId);
        Task<int> CountAsync(AvatarFilter filter);
        Task<ICollection<AvatarItem>> PageAsync(AvatarFilter filter);
        Task<ICollection<AvatarItem>> GetByIdsAsync(List<int> ids);
        Task<AvatarItem> GetByLayerPositionSortOrderAsync(int layerPosition, int sortOrder);
        Task DecreaseSortPosition(int siteId, int itemId);
        Task IncreaseSortPosition(int siteId, int itemId);
        Task<bool> IsLastInRequiredLayer(int itemId);
        Task<bool> IsInUse(int itemId, bool ignoreUnlockedUsers = false);
        Task RemoveUserItemAsync(int id);
        void RemoveUserUnlockedItem(int id);
    }
}
