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
  static readonly INDEX_DEFAULT_SELECT = 1;
  /**
   * index tab item feature
   */
  static readonly INDEX_TAB = [
    new CardModel($r('app.media.ic_tab_main_select'), $r('app.media.ic_tab_main_default'), '首页'),
    new CardModel($r('app.media.ic_tab_file_select'), $r('app.media.ic_tab_file_default'), '文件'),
    new CardModel($r('app.media.ic_tab_copy_select'), $r('app.media.ic_tab_copy_default'), '备份'),
    new CardModel($r('app.media.ic_tab_mine_select'), $r('app.media.ic_tab_mine_default'), '我的')
  ];
}