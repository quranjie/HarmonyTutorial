import CommonConstants from '../common/constants/CommonConstants';
import DimensionUtil from '../common/utils/DimensionUtil';
import CardModel from '../viewmodel/CardModel';
import CopyTabIndex from './CopyTabIndex';
import FileTabIndex from './FileTabIndex';
import MainTabIndex from './MainTabIndex';
import MineTabIndex from './MineTabIndex';

@Entry
@Component
struct Index {
  @State currentPage: number = CommonConstants.INDEX_DEFAULT_SELECT;

  @Builder
  TabBuilder(item: CardModel, index: number | undefined) {
    Column() {
      Image(this.currentPage === index ? item.selectedIcon : item.defaultIcon)
        .width(DimensionUtil.getVp($r('app.float.index_tab_icon_size')))
        .height(DimensionUtil.getVp($r('app.float.index_tab_icon_size')))
        .objectFit(ImageFit.Contain)
      Text(item.content)
        .fontColor(this.currentPage === index ? $r('app.color.index_tab_font_color') : Color.Black)
        .fontSize(DimensionUtil.getFp($r('app.float.index_tab_font_size')))
        .margin({ top: DimensionUtil.getVp($r('app.float.index_tab_vertical_margin')) })
        .opacity(this.currentPage === index
          ? $r('app.float.index_tab_font_selected_opacity')
          : $r('app.float.index_tab_font_default_opacity'))
    }
    .justifyContent(FlexAlign.Center)
    .width(CommonConstants.FULL_LENGTH)
    .height(CommonConstants.FULL_LENGTH)
  }

  build() {
    Tabs({ barPosition: BarPosition.End, index: this.currentPage }) {
      ForEach(CommonConstants.INDEX_TAB, (item: CardModel, index: number | undefined) => {
        TabContent() {
          if (index === 0) {
            MainTabIndex()
          } else if (index == 1) {
            FileTabIndex()
          } else if (index == 2) {
            CopyTabIndex()
          } else if (index == 3) {
            MineTabIndex()
          }
        }
        .tabBar(this.TabBuilder(item, index))
      }, (item: CardModel) => JSON.stringify(item))
    }
    .width(CommonConstants.FULL_LENGTH)
    .height(CommonConstants.FULL_LENGTH)
    .barMode(BarMode.Fixed)
    .onChange((index: number) => {
      this.currentPage = index;
    })
  }
}