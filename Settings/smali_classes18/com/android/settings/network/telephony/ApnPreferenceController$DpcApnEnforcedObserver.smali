.class Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;
.super Landroid/database/ContentObserver;
.source "ApnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/ApnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpcApnEnforcedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/ApnPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/ApnPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->this$0:Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->this$0:Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->access$000(Lcom/android/settings/network/telephony/ApnPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/ApnPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
