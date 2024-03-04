/**
 * Author: Qu Zhiyong
 * Date: 2024/3/1
 * Describe:
 */
import { ListItemData } from '../model/ListItemData';
import { ListDataSource } from './ListDataSource';

export class CopyViewModel {
  /**
   * Get data sources required by the LazyForEach interface.
   *
   * @return {ListDataSource} new ListDataSource(listItems)
   */
  getListDataSource(): ListDataSource {
    let listItems: Array<ListItemData> = [];
    for (let i = 0; i < 20; i++) {
      let itemInfo: ListItemData = new ListItemData();
      itemInfo.image = $r('app.media.ic_normal');
      itemInfo.title = $r('app.string.list_item_title');
      itemInfo.subTitle = $r('app.string.list_item_sub_title');
      itemInfo.summary = $r('app.string.list_item_summary');
      itemInfo.rightArrowImage = $r('app.media.ic_right_arrow');
      listItems.push(itemInfo);
    }
    return new ListDataSource(listItems);
  }

  /**
   * Get detail list Data.
   *
   * @return {Array<ListItemData>} listItems
   */
  getDetailListData(): Array<ListItemData> {
    let listItems: Array<ListItemData> = [];
    for (let i = 0; i < 4; i++) {
      let itemInfo: ListItemData = new ListItemData();
      itemInfo.title = $r('app.string.text_personal_title');
      itemInfo.summary = $r('app.string.list_item_summary');
      listItems.push(itemInfo);
    }
    return listItems;
  }
}

let copyViewModel = new CopyViewModel();

export default copyViewModel as CopyViewModel;