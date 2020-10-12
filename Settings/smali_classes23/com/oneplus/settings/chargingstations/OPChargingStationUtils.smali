.class public Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;
.super Ljava/lang/Object;
.source "OPChargingStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;,
        Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$MdmLabels;,
        Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$MdmEvents;
    }
.end annotation


# static fields
.field public static final ACTION_MUTE_NOTIFICATION:Ljava/lang/String; = "com.oneplus.intent.ACTION_NOTIFICATION"

.field public static final BEACON_DISTANCE:Ljava/lang/String; = "op_charging_station_beacon_distance"

.field public static final BEACON_NAME:Ljava/lang/String; = "op_charging_station_beacon_name"

.field public static final CHARGING_STATIONS_FEATURE_ON:Ljava/lang/String; = "op_charging_stations_feature_on"

.field public static final CHARGING_STATIONS_MUTE_NOTIFICATION:Ljava/lang/String; = "op_charging_stations_mute_notification"

.field public static final CP_PACKAGENAME:Ljava/lang/String; = "com.oneplus.chargingpilar"

.field public static final IS_FROM_SETTINGS:Ljava/lang/String; = "is_from_settings"

.field public static final MDM_APP_ID:Ljava/lang/String; = "C22AG9UUDL"

.field public static final MUTE_TIME_ETA:Ljava/lang/String; = "op_charging_stations_mute_eta"

.field public static final MUTE_TIME_OUT:J = 0x1499700L

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "notif_type"

.field public static final TYPE_ENABLED:Ljava/lang/String; = "type_enabled"

.field public static final TYPE_MUTE:Ljava/lang/String; = "type_mute"

.field public static final TYPE_UNDO:Ljava/lang/String; = "type_undo"

.field public static locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLocationUpdate()Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    return-object v0
.end method

.method public static getLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStringGlobalProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringSystemProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static putStringSystemProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notif_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.oneplus.chargingpilar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setLocationUpdate(Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;)V
    .locals 0

    sput-object p0, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    return-void
.end method
