import UIAbility from '@ohos.app.ability.UIAbility';
import hilog from '@ohos.hilog';
import window from '@ohos.window';
import display from '@ohos.display';
import { GlobalContext } from '../common/utils/GlobalContext';
import PreferencesUtil from '../common/database/PreferencesUtil';
import CommonConstants from '../common/constants/CommonConstants';
import Want from '@ohos.app.ability.Want';
import AbilityConstant from '@ohos.app.ability.AbilityConstant';
import WindowUtil from '../common/utils/WindowUtil';
import { Logger } from '../common/utils/Logger';

export default class EntryAbility extends UIAbility {

  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    Logger.info('EntryAbility Ability onCreate');

    GlobalContext.getContext()
      .setObject("want", want)
      .setObject("launchParam", launchParam);
    AppStorage.SetOrCreate('context', this.context);

    PreferencesUtil.createFontPreferences(this.context);
    // 设置字体默认大小
    PreferencesUtil.saveDefaultFontSize(CommonConstants.SET_SIZE_NORMAL);
  }

  onNewWant(want: Want, launchParam: AbilityConstant.LaunchParam) {
    GlobalContext.getContext()
      .setObject('abilityWant', want)
      .setObject('launchParam', launchParam);
  }

  async onWindowStageCreate(windowStage: window.WindowStage) {
    GlobalContext.getContext()
      .setObject("isForeground", true)

    GlobalContext.getContext().setObject('display', await display.getDefaultDisplaySync());
    // Main window is created, set main page for this ability
    Logger.info('EntryAbility Ability onWindowStageCreate');

    WindowUtil.requestFullScreen(windowStage, this.context);
    windowStage.loadContent("pages/SplashPage", (err, data) => {
      if (err.code) {
        Logger.info(`Failed to load the content. Cause: ${JSON.stringify(err) ?? ''}`);
        return;
      }
      Logger.info(`Succeeded in loading the content. Data: ${JSON.stringify(data) ?? ''}`);
    });
  }

  onForeground(): void {
    GlobalContext.getContext()
      .setObject("isForeground", true)
      .setObject("taskListChange", false)
    // Ability has brought to foreground
    Logger.info('EntryAbility Ability onForeground');
  }

  onBackground(): void {
    // 页面回退时，可以做一些数据更新保存操作
    // FormUtils.backgroundUpdateCard(GlobalContext.getContext().getObject('taskListChange') as boolean);

    // Ability has back to background
    Logger.info('EntryAbility Ability onBackground');
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    Logger.info('EntryAbility Ability onWindowStageDestroy');
  }

  onDestroy(): void {
    Logger.info('EntryAbility Ability onDestroy');
  }
}
