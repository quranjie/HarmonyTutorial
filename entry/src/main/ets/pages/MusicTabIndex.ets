/**
 * Author: Qu Zhiyong
 * Date: 2024/2/29
 * Describe:
 */
import { BreakpointSystem } from '../common/utils/BreakpointSystem';
import { MediaService } from '../common/utils/MediaService';
import StyleConstants from '../common/constants/StyleConstants';
import { BreakpointConstants } from '../common/constants/BreakpointConstants';
import { Header } from '../components/Header';
import { Player } from '../components/Player';
import { Content } from '../components/Content';

@Component
export default struct MusicTabIndex {
  private breakpointSystem: BreakpointSystem = new BreakpointSystem();
  @State currentBreakpoint: string = BreakpointConstants.BREAKPOINT_SM;

  aboutToAppear() {
    MediaService.getInstance();
    this.breakpointSystem.register();
  }

  aboutToDisappear() {
    this.breakpointSystem.unregister();
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Header({ currentBreakpoint: $currentBreakpoint })
      Content({ currentBreakpoint: $currentBreakpoint })
      Player({ currentBreakpoint: $currentBreakpoint })
    }
    .margin({ bottom: $r('app.float.main_bar_height') })
    .width(StyleConstants.FULL_WIDTH)
    .backgroundColor(this.currentBreakpoint === BreakpointConstants.BREAKPOINT_SM ?
    $r('app.color.page_background_sm') : $r('app.color.page_background_other'))
  }
}