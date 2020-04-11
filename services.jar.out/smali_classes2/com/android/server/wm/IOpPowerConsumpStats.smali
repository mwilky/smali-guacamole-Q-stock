.class public interface abstract Lcom/android/server/wm/IOpPowerConsumpStats;
.super Ljava/lang/Object;
.source "IOpPowerConsumpStats.java"


# virtual methods
.method public abstract init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;)Z
.end method

.method public abstract initPlugState(ZIZ)Z
.end method

.method public abstract notifyBatteryLevelEvent(I)V
.end method

.method public abstract notifyDozeEvent(ZLjava/lang/String;)V
.end method

.method public abstract notifyFastChargeEvent(Z)V
.end method

.method public abstract notifyPkgEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract notifyPlugEvent(Ljava/lang/Boolean;IZ)V
.end method

.method public abstract notifyScreenEvent(Ljava/lang/Boolean;)V
.end method

.method public abstract processBatteryValues(IIZZ)V
.end method

.method public abstract registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V
.end method

.method public abstract updateScreenState(I)V
.end method
