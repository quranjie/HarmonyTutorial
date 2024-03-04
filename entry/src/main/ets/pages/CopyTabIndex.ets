/**
 * Author: Qu Zhiyong
 * Date: 2024/2/29
 * Describe:
 */
import { ListItemData } from '../bean/ListItemData'
import CommonConstants from '../common/constants/CommonConstants'
import StyleConstants from '../common/constants/StyleConstants'
import CommonTitle from '../view/CommonTitle'
import { ListItemComponent } from '../view/ListItemComponent'
import CopyViewModel from '../viewmodel/CopyViewModel'
import router from '@ohos.router'

@Component
export default struct CopyTabIndex {
  build() {
    Stack({ alignContent: Alignment.Top }) {
      Column() {
        CommonTitle({ title: "备份", isBack: false })

        List() {
          LazyForEach(CopyViewModel.getListDataSource(), (item: ListItemData) => {
            ListItem() {
              ListItemComponent({ itemInfo: item })
                .padding({ left: 20, right: 10 })
            }
            .onClick(() => {
              router.pushUrl({
                url: 'pages/DetailPage',
                params: { data: item.title }
              });
            })
          }, (item: ListItemData, index?: number) => index + JSON.stringify(item))
        }
        .width('100%')
        .divider({
          strokeWidth: '0.5vp',
          color: $r('app.color.divider_color'),
          startMargin: '45vp',
          endMargin: '8vp'
        })
        .padding({ bottom: $r('app.float.main_bar_height') })
      }
      .height(StyleConstants.FULL_HEIGHT)
      .width(StyleConstants.FULL_WIDTH)
    }
    .height(CommonConstants.FULL_LENGTH)
  }
}