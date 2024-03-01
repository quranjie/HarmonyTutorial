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

  static readonly SELF_INFORMATION_URL: string = 'pages/SelfInformationPage';

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

  /**
   * Date year
   */
  static readonly DATE_YEAR: string = '年';

  /**
   * Date month
   */
  static readonly DATE_MONTH: string = '月';

  /**
   * Date day
   */
  static readonly DATE_DAY: string = '日';

  /**
   * Date dialog start time.
   */
  static readonly START_TIME: string = '1900-1-1';

  /**
   * Date dialog select time.
   */
  static readonly SELECT_TIME: string = '1990-1-1';

  /**
   * Image back margin left of the 7.2.
   */
  static readonly BACK_MARGIN_LEFT: string = '7.2%';

  /**
   * Image avatar margin top of the 5.5.
   */
  static readonly AVATAR_MARGIN_TOP: string = '5.5%';

  /**
   * Text personal margin top of the 2.1.
   */
  static readonly PERSONAL_MARGIN_TOP: string = '2.1%';

  /**
   * Common dialog width of the 93.3.
   */
  static readonly COMMON_DIALOG_WIDTH: string = '93.3%';

  /**
   * Join comma
   */
  static readonly COMMA: string = '，';

  /**
   * Image back margin top of the 19.
   */
  static readonly BACK_MARGIN_TOP: number = 19;

  /**
   * Font weight of the 500.
   */
  static readonly BIGGER: number = 500;

  /**
   * Dialog y-axis offset distance of the 20.
   */
  static readonly DY_OFFSET: number = -20;

  /**
   * Current month plus one.
   */
  static readonly PLUS_ONE: number = 1;

  /**
   * Layout weight size of the 1.
   */
  static readonly WEIGHT_ONE: number = 1;

  /**
   * Text common max lines of the 1.
   */
  static readonly ONE_LINES: number = 1;
  /**
   * The home page tag.
   */
  static readonly TAG_HOME: string = 'HomePage';

  /**
   * The Common utils tag.
   */
  static readonly TAG_COMMON_UTILS: string = 'CommonUtils';

  /**
   * Custom dialog widget tag.
   */
  static readonly TAG_CUSTOM: string = 'CustomDialogWidget';

  /**
   * Width the percentage of the 100.
   */
  static readonly FULL_WIDTH: string = '100%';

  /**
   * Height the percentage of the 100.
   */
  static readonly FULL_HEIGHT: string = '100%';
}