.class Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;
.super Landroid/database/ContentObserver;
.source "OPChargingStationSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-static {v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->access$200(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-static {v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "op_charging_stations_feature_on"

    invoke-static {v1, v3, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return-void
.end method
