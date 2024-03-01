/**
 * Author: Qu Zhiyong
 * Date: 2024/2/29
 * Describe:
 */
import CommonConstants from '../common/constants/CommonConstants'
import StyleConstants from '../common/constants/StyleConstants'
import CommonTitle from '../view/CommonTitle'

@Component
export default struct FileTabIndex {
  build() {
    Stack({ alignContent: Alignment.Top }) {
      Column() {
        CommonTitle({ title: "文件", isBack: false })

      }
      .height(StyleConstants.FULL_HEIGHT)
      .width(StyleConstants.FULL_WIDTH)
    }
    .height(CommonConstants.FULL_LENGTH)
  }
}