.class Lcom/android/settings/fuelgauge/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortString:Z

.field final synthetic val$statsHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$statsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$statsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Z)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$Callback;->onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    const-string v2, "BatteryInfo"

    const-string v3, "time for callback"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
