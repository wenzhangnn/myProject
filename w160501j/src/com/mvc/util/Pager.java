package com.mvc.util;

import java.util.List;

/**
 * 分页的封装类
 * 
 * @author SONG
 *
 * @param <T>
 */
public class Pager<T> {
  private List<T> rows; // 分页数据的集合
  private int total; // 分页数据的总数

  public List<T> getRows() {
    return rows;
  }

  public void setRows(List<T> rows) {
    this.rows = rows;
  }

  public int getTotal() {
    return total;
  }

  public void setTotal(int total) {
    this.total = total;
  }
}
