.class public abstract Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TelephonyBasePreferenceController.java"

# interfaces
.implements Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;


# instance fields
.field protected mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    new-instance v2, Lcom/android/settings/network/telephony/-$$Lambda$ObfukzJxj4OvZ6XClLvNT8fzhCc;

    invoke-direct {v2, p0}, Lcom/android/settings/network/telephony/-$$Lambda$ObfukzJxj4OvZ6XClLvNT8fzhCc;-><init>(Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getAvailability(Landroid/content/Context;ILcom/android/settings/network/telephony/TelephonyAvailabilityCallback;)I

    move-result v0

    return v0
.end method
