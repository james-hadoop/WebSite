package com.leyao.web.entity;

import java.util.Date;

public class LeyaoWeb {
    private Integer tabId;

    private Integer tabParentId;

    private String tabName;

    private String tabUrl;

    private Integer tabOrder;

    private Integer tabLength;

    private Integer tabWidth;

    private Integer isDelete;

    private String createUsername;

    private Date createTimestamp;

    private String updateUsername;

    private Date updateTimestamp;

    public Integer getTabId() {
        return tabId;
    }

    public void setTabId(Integer tabId) {
        this.tabId = tabId;
    }

    public Integer getTabParentId() {
        return tabParentId;
    }

    public void setTabParentId(Integer tabParentId) {
        this.tabParentId = tabParentId;
    }

    public String getTabName() {
        return tabName;
    }

    public void setTabName(String tabName) {
        this.tabName = tabName;
    }

    public String getTabUrl() {
        return tabUrl;
    }

    public void setTabUrl(String tabUrl) {
        this.tabUrl = tabUrl;
    }

    public Integer getTabOrder() {
        return tabOrder;
    }

    public void setTabOrder(Integer tabOrder) {
        this.tabOrder = tabOrder;
    }

    public Integer getTabLength() {
        return tabLength;
    }

    public void setTabLength(Integer tabLength) {
        this.tabLength = tabLength;
    }

    public Integer getTabWidth() {
        return tabWidth;
    }

    public void setTabWidth(Integer tabWidth) {
        this.tabWidth = tabWidth;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public String getCreateUsername() {
        return createUsername;
    }

    public void setCreateUsername(String createUsername) {
        this.createUsername = createUsername;
    }

    public Date getCreateTimestamp() {
        return createTimestamp;
    }

    public void setCreateTimestamp(Date createTimestamp) {
        this.createTimestamp = createTimestamp;
    }

    public String getUpdateUsername() {
        return updateUsername;
    }

    public void setUpdateUsername(String updateUsername) {
        this.updateUsername = updateUsername;
    }

    public Date getUpdateTimestamp() {
        return updateTimestamp;
    }

    public void setUpdateTimestamp(Date updateTimestamp) {
        this.updateTimestamp = updateTimestamp;
    }
}