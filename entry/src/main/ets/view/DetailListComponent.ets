import { ListItemData } from '../bean/ListItemData';
import CopyViewModel from '../viewmodel/CopyViewModel';

/**
 * Detail page list component.
 */
@Component
export struct DetailListComponent {
  build() {
    Column() {
      List() {
        ForEach(CopyViewModel.getDetailListData(), (item: ListItemData) => {
          ListItem() {
            Row() {
              Text(item.title)
                .fontSize('16fp')
                .fontColor($r('app.color.list_item_title'))
              Blank()
              Text(item.summary)
                .fontSize('14vp')
                .fontColor($r('app.color.list_item_sub_title'))
            }
            .width('100%')
            .height('48vp')
          }
        }, (item: ListItemData, index?: number) => index + JSON.stringify(item));
      }
      .width('100%')
      .divider({
        strokeWidth: '0.5vp',
        color: $r('app.color.divider_color')
      })
    }
    .width('92%')
    .padding({
      top: '4vp',
      bottom: '4vp',
      left: '12vp',
      right: '12vp'
    })
    .margin({ top: '8vp' })
    .backgroundColor($r('app.color.column_background_color'))
    .borderRadius('16vp')
  }
}