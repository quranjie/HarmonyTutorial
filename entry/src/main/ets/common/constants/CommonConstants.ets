/**
 * Author: Qu Zhiyong
 * Date: 2024/2/29
 * Describe:
 */
import display from '@ohos.display'
import CardModel from '../../viewmodel/CardModel';
import { GlobalContext } from '../utils/GlobalContext'

let deviceDisplay: display.Display = GlobalContext.getContext().getObject('display') as display.Display;

export default class CommonConstants {
  /**
   * common full length
   */
  static readonly FULL_LENGTH = '100%';
  /**
   * index default select
   */
  static readonly INDEX_DEFAULT_SELECT = 0;
  /**
   * index tab item feature
   */
  static readonly INDEX_TAB = [
    new CardModel($r('app.media.ic_tab_main_select'), $r('app.media.ic_tab_main_default'), '首页'),
    new CardModel($r('app.media.ic_tab_file_select'), $r('app.media.ic_tab_file_default'), '文件'),
    new CardModel($r('app.media.ic_tab_copy_select'), $r('app.media.ic_tab_copy_default'), '备份'),
    new CardModel($r('app.media.ic_tab_mine_select'), $r('app.media.ic_tab_mine_default'), '我的')
  ];
  /**
   * Small font size.
   */
  static readonly SET_SIZE_SMALL: number = 14;

  /**
   * Normal font size.
   */
  static readonly SET_SIZE_NORMAL: number = 16;

  /**
   * Large font size.
   */
  static readonly SET_SIZE_LARGE: number = 18;

  /**
   * Extra large font size.
   */
  static readonly SET_SIZE_EXTRA_LARGE: number = 20;

  /**
   * Huge font size.
   */
  static readonly SET_SIZE_HUGE: number = 24;

  /**
   * Slider min value.
   */
  static readonly SET_SLIDER_MIN: number = 14;

  /**
   * Slider max value.
   */
  static readonly SET_SLIDER_MAX: number = 22;

  /**
   * Slider step length.
   */
  static readonly SET_SLIDER_STEP: number = 2;

  /**
   * The setting list display index.
   */
  static readonly DISPLAY_INDEX: number = 0;

  /**
   * The setting list voice index.
   */
  static readonly VOICE_INDEX: number = 1;

  /**
   * The setting list slice start index.
   */
  static readonly START_INDEX: number = 2;

  /**
   * The setting list slice font index.
   */
  static readonly SET_FONT_INDEX: number = 3;

  /**
   * The setting list slice end index.
   */
  static readonly END_INDEX: number = 6;
  /**
   * The set font size url.
   */
  static readonly SET_URL: string = 'pages/SetFontSizePage';

  /**
   * Input length of the account.
   */
  static readonly INPUT_ACCOUNT_LENGTH = 11;

  /**
   *  Input length of the password.
   */
  static readonly INPUT_PASSWORD_LENGTH = 8;

  /**
   *  Left padding of the input box
   */
  static readonly INPUT_PADDING_LEFT = 0;

  /**
   * Delay time of simulated login
   */
  static readonly LOGIN_DELAY_TIME = 2000;

  /**
   * Common Spacing of Components
   */
  static readonly COMMON_SPACE = 12;

  /**
   * Title text of the home page
   */
  static readonly HOME_TITLE = '首页';

  /**
   * Title text of the setting page
   */
  static readonly MINE_TITLE = '我的';

  /**
   * Spacing of other login methods
   */
  static readonly LOGIN_METHODS_SPACE = 44;

  /**
   * The width or height of the component is spread across the parent component.
   */
  static readonly FULL_PARENT = '100%';

  /**
   * The width of button
   */
  static readonly BUTTON_WIDTH = '90%';

  /**
   * The width of setting list
   */
  static readonly SET_LIST_WIDTH = '42%';

}