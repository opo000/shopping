package user.model;

import java.util.List;

import user.dto.GoodsDto;

public interface GoodsCatalog {
    public List getSelectedList(List itemList);
    public GoodsDto findItemByCode(String code);
}
