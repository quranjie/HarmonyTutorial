import { ListItemData } from '../model/ListItemData';

/**
 * Provides data sources required by the LazyForEach interface.
 */
export class ListDataSource implements IDataSource {
  private listItems: Array<ListItemData> = [];
  private listener: DataChangeListener | null = null;

  constructor(list: Array<ListItemData>) {
    this.listItems = list;
  }

  totalCount(): number {
    return this.listItems.length;
  }

  getData(index: number): ListItemData {
    return this.listItems[index];
  }

  registerDataChangeListener(listener: DataChangeListener): void {
    this.listener = listener;
  }

  unregisterDataChangeListener(): void {
  }
}