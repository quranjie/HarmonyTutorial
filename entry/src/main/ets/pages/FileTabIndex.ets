/**
 * Author: Qu Zhiyong
 * Date: 2024/2/29
 * Describe:
 */
import CommonConstants from '../common/constants/CommonConstants'

@Component
export default struct FileManagerIndex {
  build() {
    Stack({ alignContent: Alignment.Top }) {
      Text("文件")
        .fontColor(Color.Blue)
        .fontSize(16)
    }
    .height(CommonConstants.FULL_LENGTH)
  }
}