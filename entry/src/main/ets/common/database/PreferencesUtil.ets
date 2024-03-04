/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import dataPreferences from '@ohos.data.preferences';
import { GlobalContext } from '../utils/GlobalContext';
import { Logger } from '../utils/Logger';

const TAG = '[PreferencesUtil]';
const PREFERENCES_NAME = 'myPreferences';
const KEY_APP_FONT_SIZE = 'appFontSize';
const MY_STORE = 'myStore';
const FORM_ID = 'formIds';

/**
 * The PreferencesUtil provides preferences of create, save and query.
 */
export class PreferencesUtil {
  private static preferencesUtil: PreferencesUtil;

  public static getInstance(): PreferencesUtil {
    if (!PreferencesUtil.preferencesUtil) {
      PreferencesUtil.preferencesUtil = new PreferencesUtil();
    }
    return PreferencesUtil.preferencesUtil;
  }

  getPreferences(context: Context): Promise<dataPreferences.Preferences> {
    return new Promise((resolve: Function, reject: Function) => {
      dataPreferences.getPreferences(context, MY_STORE, (err, pref: dataPreferences.Preferences) => {
        if (err) {
          Logger.error(TAG, `Failed to get preferences. Code:${err.code},message:${err.message}`);
          reject(err);
          return;
        }
        resolve(pref);
      })
    })
  }

  preferencesFlush(preferences: dataPreferences.Preferences) {
    preferences.flush((err) => {
      if (err) {
        Logger.error(TAG, `Failed to flush. Code:${err.code}, message:${err.message}`);
      }
    })
  }

  preferencesPut(preferences: dataPreferences.Preferences, key: string, formIds: Array<string>): Promise<boolean> {
    return new Promise((resolve: Function, reject: Function) => {
      try {
        preferences.put(key, formIds, (err) => {
          if (err) {
            reject(err);
            Logger.error(TAG, `Failed to put data. Code:${err.code}, message:${err.message}`);
            return;
          }
          Logger.info(TAG, `preferencesPut succeed,formIds:` + JSON.stringify(formIds));
          resolve(true);
        })
      } catch (err) {
        Logger.error(TAG, `Failed to put data. Error cause : ${JSON.stringify(err)}`);
      }
    });
  }

  async preferencesHas(preferences: dataPreferences.Preferences, key: string): Promise<boolean> {
    return new Promise((resolve: Function, reject: Function) => {
      preferences.has(key, (err, value) => {
        if (err) {
          reject(err);
          Logger.error(TAG, `WANG to check the key 'formIds'. Code:${err.code}, message:${err.message}`);
          return;
        }
        resolve(value);
      });
    })
  }

  removePreferencesFromCache(context: Context): void {
    dataPreferences.removePreferencesFromCache(context, MY_STORE);
  }

  async getFormIds(context: Context): Promise<Array<string>> {
    try {
      let preferences = await this.getPreferences(context);
      return new Promise((resolve, reject) => {
        if (preferences === null) {
          Logger.error(TAG, `preferences is null`);
          return;
        }
        preferences.get(FORM_ID, ['']).then((value: number | string | boolean | Array<number> | Array<string> | Array<boolean>) => {
          resolve(value as Array<string>)
        }).catch((error: Error) => reject(error))
      })
    } catch (err) {
      Logger.error(TAG, `WANG Failed to get value of 'formIds'. Error cause : ${JSON.stringify(err)}`);
    }
    return new Promise((resolve: Function, reject: Function) => {});
  }

  async addFormId(context: Context, formId: string) {
    try {
      let preferences = await this.getPreferences(context);
      if (preferences === null) {
        Logger.error(TAG, `preferences is null`);
        return;
      }

      if (await this.preferencesHas(preferences, FORM_ID)) {
        let formIds = await this.getFormIds(context);
        if (formIds.indexOf(formId) === -1) {
          formIds.push(formId);
          if (!await this.preferencesPut(preferences, FORM_ID, formIds)) {
            return;
          }
          this.preferencesFlush(preferences);
        }
      } else {
        if (!await this.preferencesPut(preferences, FORM_ID, [formId])) {
          return;
        }
        this.preferencesFlush(preferences);
      }
    } catch (err) {
      Logger.error(TAG, `Failed to check the key 'formIds'. Error cause : ${JSON.stringify(err)}`);
    }
  }

  async removeFormId(context: Context, formId: string) {
    try {
      let preferences = await this.getPreferences(context);
      if (preferences === null) {
        Logger.error(TAG, `preferences is null`);
        return;
      }
      if (await this.preferencesHas(preferences, FORM_ID)) {
        let formIds = await this.getFormIds(context);
        let index = formIds.indexOf(formId);
        if (index !== -1) {
          formIds.splice(index, 1);
        }
        if (!await this.preferencesPut(preferences, FORM_ID, formIds)) {
          return;
        }
        this.preferencesFlush(preferences);
      }
    } catch (err) {
      Logger.error(TAG, `WANG Failed to get preferences. Error cause : ${JSON.stringify(err)}`);
    }
  }

  createFontPreferences(context: Context) {
    let fontPreferences: Function = (() => {
      let preferences: Promise<dataPreferences.Preferences> = dataPreferences.getPreferences(context,
        PREFERENCES_NAME);
      return preferences;
    });
    GlobalContext.getContext().setObject('getFontPreferences', fontPreferences);
  }

  saveDefaultFontSize(fontSize: number) {
    let getFontPreferences: Function = GlobalContext.getContext().getObject('getFontPreferences') as Function;
    getFontPreferences().then((preferences: dataPreferences.Preferences) => {
      preferences.has(KEY_APP_FONT_SIZE).then(async (isExist: boolean) => {
        Logger.info(TAG, 'preferences has changeFontSize is ' + isExist);
        if (!isExist) {
          await preferences.put(KEY_APP_FONT_SIZE, fontSize);
          preferences.flush();
        }
      }).catch((err: Error) => {
        Logger.error(TAG, 'Has the value failed with err: ' + err);
      });
    }).catch((err: Error) => {
      Logger.error(TAG, 'Get the preferences failed, err: ' + err);
    });
  }

  saveChangeFontSize(fontSize: number) {
    let getFontPreferences: Function = GlobalContext.getContext().getObject('getFontPreferences') as Function;
    getFontPreferences().then(async (preferences: dataPreferences.Preferences) => {
      await preferences.put(KEY_APP_FONT_SIZE, fontSize);
      preferences.flush();
    }).catch((err: Error) => {
      Logger.error(TAG, 'put the preferences failed, err: ' + err);
    });
  }

  async getChangeFontSize() {
    let fontSize: number = 0;
    let getFontPreferences: Function = GlobalContext.getContext().getObject('getFontPreferences') as Function;
    fontSize = await (await getFontPreferences()).get(KEY_APP_FONT_SIZE, fontSize);
    return fontSize;
  }

  async deleteChangeFontSize() {
    let getFontPreferences: Function = GlobalContext.getContext().getObject('getFontPreferences') as Function;
    const preferences: dataPreferences.Preferences = await getFontPreferences();
    let deleteValue = preferences.delete(KEY_APP_FONT_SIZE);
    deleteValue.then(() => {
      Logger.info(TAG, 'Succeeded in deleting the key appFontSize.');
    }).catch((err: Error) => {
      Logger.error(TAG, 'Failed to delete the key appFontSize. Cause: ' + err);
    });
  }
}

export default new PreferencesUtil();