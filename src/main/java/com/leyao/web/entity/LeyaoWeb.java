package com.leyao.web.entity;

import java.util.Date;

public class LeyaoWeb {
    private Integer tabId;

    private Integer tabParentId;

    private String tabName;

    private String tabUrl;

    private Integer tabOreder;

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

    public Integer getTabOreder() {
        return tabOreder;
    }

    public void setTabOreder(Integer tabOreder) {
        this.tabOreder = tabOreder;
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