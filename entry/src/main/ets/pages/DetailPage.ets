import router from '@ohos.router';
import CommonConstants from '../common/constants/CommonConstants';
import Logger from '../common/utils/Logger';
import CommonTitle from '../view/CommonTitle';
import { DetailListComponent } from '../view/DetailListComponent';

/**
 * Detail page to display more information.
 */
@Entry
@Component
struct DetailPage {
  private titleParam: Resource = $r('app.string.new_product_debut');

  aboutToAppear() {
    if (router.getParams()) {
      let param = router.getParams() as Record<string, Object>;
      this.titleParam = param[CommonConstants.KEY_PARAM_DATA] as Resource;
    }
  }

  build() {
    Column() {
      CommonTitle({
        title: this.titleParam,
        onBackClick: () => {
          Logger.info('DetailPage onBackClick ')
          router.back();
        }
      })

      GridRow({
        breakpoints: {
          value: ['320vp', '600vp', '840vp'],
          reference: BreakpointsReference.WindowSize
        },
        columns: { sm: 4, md: 8, lg: 12 },
        gutter: { x: vp2px(24) },
        direction: GridRowDirection.Row
      }) {
        GridCol({
          span: { sm: 4, md: 6, lg: 8 },
          offset: { md: 1, lg: 2 }
        }) {
          DetailListComponent()
        }
        .margin({
          left: '12vp',
          right: '12vp'
        })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.start_window_background'))
  }
}