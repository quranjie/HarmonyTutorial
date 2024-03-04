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
   * Full width.
   */
  static readonly FULL_WIDTH: string = '100%';

  /**
   * Full height.
   */
  static readonly FULL_HEIGHT: string = '100%';

  /**
   * Normal font weight.
   */
  static readonly FONT_WEIGHT: number = 500;

  /**
   * Larger font weight.
   */
  static readonly FONT_WEIGHT_LARGE: number = 700;

  /**
   * Width of the content area.
   */
  static readonly MAIN_BOARD_WIDTH: string = '93.3%';

  /**
   * Opacity of text.
   */
  static readonly OPACITY: number = 0.4;

  /**
   * Opacity of not.
   */
  static readonly NO_OPACITY: number = 1;

  /**
   * Toast Duration.
   */
  static readonly TOAST_TIME: number = 3000;

  /**
   * Bottom toast.
   */
  static readonly TOAST_MARGIN_BOTTOM: number = 64;

  /**
   * Width of title.
   */
  static readonly TITLE_WIDTH: string = '86.7%';

  /**
   * Radius of bookInfo area.
   */
  static readonly TARGET_BORDER_RADIUS: number = 24;

  /**
   * Radius of bookInfo area.
   */
  static readonly IMAGE_BORDER_RADIUS: number = 12;

  /**
   * Margin left of book item.
   */
  static readonly TARGET_MARGIN_LEFT: string = '5%';

  /**
   * Width of slider.
   */
  static readonly STROKE_WIDTH: number = 4.8;

  /**
   * Width of dialog.
   */
  static readonly DIALOG_WIDTH: string = '90.3%';

  /**
   * Radius of dialog.
   */
  static readonly DIALOG_BORDER_RADIUS: number = 32;

  /**
   * Button width of dialog.
   */
  static readonly DIALOG_OPERATION_WIDTH: string = '70%';

  /**
   * Button height of dialog.
   */
  static readonly DIALOG_OPERATION_HEIGHT: string = '10%';

  /**
   * Button height of dialog.
   */
  static readonly DIALOG_INPUT_HEIGHT: string = '40%';

  /**
   * Input margin of dialog.
   */
  static readonly DIALOG_INPUT_MARGIN: string = '6%';

  /**
   * Horizontal offset of dialog.
   */
  static readonly DIALOG_OFFSET_X: number = 0;

  /**
   * The smallest value of slider.
   */
  static readonly SLIDER_MIN_VALUE: number = 0;

  /**
   * The maximum value of slider.
   */
  static readonly SLIDER_MAX_VALUE: number = 100;

  /**
   * Step of slider.
   */
  static readonly SLIDER_STEP: number = 1;

  /**
   * Width of slider.
   */
  static readonly SLIDER_WIDTH: string = '90%';

  /**
   * Height of slider.
   */
  static readonly SLIDER_HEIGHT: string = '20%';

  /**
   * Height of slider button.
   */
  static readonly SLIDER_BUTTON_HEIGHT: string = '21%';

  /**
   * Margin top of slider button.
   */
  static readonly SLIDER_BUTTON_MARGIN: string = '4%';

  /**
   * Margin top of slider button.
   */
  static readonly SLIDER_INNER_WIDTH: string = '90%';

  /**
   * Width of checkbox.
   */
  static readonly CHECKBOX_WIDTH: number = 20;

  /**
   * Max of line.
   */
  static readonly MAX_LINES: number = 2;

  /**
   * Height of list.
   */
  static readonly LIST_HEIGHT: string = '80%';

  /**
   * Height of list board.
   */
  static readonly LIST_BOARD_HEIGHT: string = '67%';

  /**
   * list space.
   */
  static readonly LIST_SPACE: number = 12;

  /**
   * Width of task item.
   */
  static readonly TASK_NAME_WIDTH: string = '30%';

  /**
   * Radius of list.
   */
  static readonly LIST_RADIUS: number = 24;

  /**
   * Default progress value.
   */
  static readonly DEFAULT_PROGRESS_VALUE: string = '-';
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

  static readonly TARGET_MANAGER_URL: string = 'pages/TargetManagerPage';
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
   * The fraction or number of seconds is less than 10.
   */
  static readonly TEN: number = 10;

  /**
   * One task of data.
   */
  static readonly ONE_TASK: number = 1;

  /**
   * animation duration.
   */
  static readonly DURATION: number = 300;

  /**
   * default click index.
   */
  static readonly DEFAULT_CLICK_INDEX: number = -1;

  /**
   * default SliderChangeMode.
   */
  static readonly DEFAULT_SLIDER_MODE: number = -1;

  /**
   * click SliderChangeMode.
   */
  static readonly CLICK_SLIDER_MODE: number = 3;

  /**
   * x-axis transition animation.
   */
  static readonly TRANSITION_ANIMATION_X: number = 1;

  /**
   * y-axis transition animation.
   */
  static readonly TRANSITION_ANIMATION_Y: number = 0;
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
   * Key to transfer parameters when replace pages.
   */
  static readonly KEY_PARAM_DATA: string = 'data';
}